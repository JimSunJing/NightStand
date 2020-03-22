package com.jimmy.entity;

import com.jimmy.utils.format.dateFormatUtils;
import lombok.Data;

import java.util.Date;

@Data
public class Finished {

    private Integer id;
    private Integer uid;
    private String eventId;
    private Character eventType;
    private String title;
    private Date date;
    private String comment;
    private Integer star;

    public Finished(){};

    public Finished(Integer uid, String eventId, Character eventType, String title, Date date, Integer star) {
        this.uid = uid;
        this.eventId = eventId;
        this.eventType = eventType;
        this.title = title;
        this.date = date;
        this.star = star;
    }
}
