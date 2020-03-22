package com.jimmy.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class Waiting {

    private Integer id;
    private Integer uid;
    private String eventId;
    private Character eventType;
    private String title;

    public Waiting(){
    }

    public Waiting(Integer uid, String eventId, Character eventType, String title) {
        this.uid = uid;
        this.eventId = eventId;
        this.eventType = eventType;
        this.title = title;
    }


}
