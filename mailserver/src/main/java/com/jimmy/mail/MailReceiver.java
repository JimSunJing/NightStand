package com.jimmy.mail;

import com.jimmy.entity.UserMailVO;
import com.rabbitmq.client.Channel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageHeaders;
import org.springframework.stereotype.Component;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Date;

/**
 @作者 Jim Sun
 @GitHub: https://github.com/JimSunJing
 @Blog: https://jimsunjing.github.io/
 */
@Component
public class MailReceiver {

    public static final Logger logger = LoggerFactory.getLogger(MailReceiver.class);

    @Autowired
    JavaMailSender javaMailSender;
    @Autowired
    MailProperties mailProperties;
    @Autowired
    TemplateEngine templateEngine;
    @Autowired
    StringRedisTemplate redisTemplate;

    @RabbitListener(queues = "nightstand.mail.queue")
    public void mailHandler(Message message, Channel channel) throws IOException{
        UserMailVO user = (UserMailVO) message.getPayload();
        MessageHeaders headers = message.getHeaders();
        Long tag = (Long) headers.get(AmqpHeaders.DELIVERY_TAG);
        String messageId = (String) headers.get("spring_returned_message_correlation");
        if (redisTemplate.opsForHash().entries("mail_log").containsKey(messageId)){
            // redis已经存有该key，消息被消费
            logger.info(messageId+" - 消息已被消费");
            channel.basicAck(tag,false);
            return;
        }
        MimeMessage msg = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg);
        try {
            helper.setTo(user.getMail());
            helper.setFrom(mailProperties.getUsername());
            helper.setSubject("注册激活");
            helper.setSentDate(new Date());

            Context context = new Context();
            context.setVariable("name",user.getUsername());
            context.setVariable("activeCode",user.getActivateCode());
            String mail = templateEngine.process("activateMail",context);

            helper.setText(mail);
            javaMailSender.send(msg);
            redisTemplate.opsForHash().put("mail_log",messageId,"consumed");
            channel.basicAck(tag,false);
            logger.info(messageId+"邮件发送成功");
        } catch (MessagingException e) {
            channel.basicNack(tag,false, true);
            e.printStackTrace();
            logger.error("邮件发送失败: "+e.getMessage());
        }
    }


}
