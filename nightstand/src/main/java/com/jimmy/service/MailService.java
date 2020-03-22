package com.jimmy.service;

import com.jimmy.entity.MailSendLog;
import com.jimmy.entity.UserMailVO;
import com.jimmy.mapper.MailSendLogMapper;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.UUID;

@Service
public class MailService {

    @Autowired
    private MailSendLogMapper mailSendLogMapper;
    @Autowired
    RabbitTemplate rabbitTemplate;

    @Value("${mail-exchange-name}")
    private String MAIL_EXCHANGE_NAME;
    @Value("${mail-routing-key}")
    private String MAIL_ROUTING_KEY;

    public void sendActivateMail(UserMailVO userMailVO){
        // 生成邮箱记录
        String msgId = UUID.randomUUID().toString();
        MailSendLog mailSendLog = new MailSendLog();
        mailSendLog.setMsgId(msgId);
        mailSendLog.setCreateTime(new Date());
        mailSendLog.setExchange(MAIL_EXCHANGE_NAME);
        mailSendLog.setRouteKey(MAIL_ROUTING_KEY);
        mailSendLog.setUid(userMailVO.getUid());
        mailSendLog.setTryTime(new Date(System.currentTimeMillis() + 1000 * 60 * 1));
        mailSendLogMapper.insert(mailSendLog);
        rabbitTemplate.convertAndSend(MAIL_EXCHANGE_NAME, MAIL_ROUTING_KEY, userMailVO, new CorrelationData(msgId));
    }


}
