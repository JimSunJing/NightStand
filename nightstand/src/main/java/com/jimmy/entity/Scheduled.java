package com.jimmy.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Scheduled {

    private Integer id;
    private Integer uid;
    private Date due;
    private String eventId;
    private Character eventType;
    private Boolean informed;
    private Boolean achieved;
    private String title;

}
