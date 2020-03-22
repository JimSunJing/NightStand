package com.jimmy.service.config;

import com.jimmy.mapper.MailSendLogMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Date;

@Configuration
@Slf4j
public class RabbitMQConfig {

    @Autowired
    CachingConnectionFactory cachingConnectionFactory;
    @Autowired
    MailSendLogMapper mailSendLogMapper;

    @Value("${mail-exchange-name}")
    private String MAIL_EXCHANGE_NAME;
    @Value("${mail-queue-name}")
    private String MAIL_QUEUE_NAME;
    @Value("${mail-routing-key}")
    private String MAIL_ROUTING_KEY;

    @Bean
    RabbitTemplate rabbitTemplate(){
        RabbitTemplate rabbitTemplate = new RabbitTemplate(cachingConnectionFactory);
        rabbitTemplate.setConfirmCallback((data,ack,cause) -> {
            String msgId = data.getId();
            if (ack){
                log.info(msgId+": 消息发送成功!");
                mailSendLogMapper.updateStatus(msgId,1,new Date());
            }else {
                log.info(msgId+": 消息发送失败!");
            }
        });
        rabbitTemplate.setReturnCallback((msg,reqCode,repText,exchange,routingKey) -> {
            log.info("消息发送失败");
        });
        return rabbitTemplate;
    }

    @Bean
    Queue mailQueue(){
        return new Queue(MAIL_QUEUE_NAME,true);
    }

    @Bean
    DirectExchange mailExchange(){
        return new DirectExchange(MAIL_EXCHANGE_NAME,true,false);
    }

    @Bean
    Binding mailBinding(){
        return BindingBuilder.bind(mailQueue()).to(mailExchange()).with(MAIL_ROUTING_KEY);
    }

}
