package com.jimmy.entity;

import com.alibaba.fastjson.JSONArray;
import lombok.Data;

import java.util.Date;

@Data
public class RecommendList {

    private Integer id;
    private Integer uid;
    private String title;
    private String text;
    private JSONArray items;
    private Date pubTime;

}
