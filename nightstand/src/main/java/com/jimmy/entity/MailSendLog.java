package com.jimmy.entity;

import lombok.Data;

import java.util.Date;

@Data
public class MailSendLog {
    private String msgId;
    private Integer uid;
    //0 消息已投递   1 投递成功   2投递失败
    private Integer status;
    private String routeKey;
    private String exchange;
    private Integer count;
    private Date tryTime;
    private Date createTime;
    private Date updateTime;
}
