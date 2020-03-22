package com.jimmy.entity;

import lombok.Data;

@Data
public class RespContainer {

    private Integer status;
    private String msg;
    private Object obj;

    public RespContainer(){}

    public RespContainer(Integer status, String msg) {
        this.status = status;
        this.msg = msg;
    }

    public RespContainer(Integer status, String msg, Object obj) {
        this.status = status;
        this.msg = msg;
        this.obj = obj;
    }

    public static RespContainer ok(String msg){
        return ok(msg,null);
    }

    public static RespContainer ok(String msg, Object obj){
        return new RespContainer(200,msg,obj);
    }

    public static RespContainer error(String msg){
        return error(msg,null);
    }

    public static RespContainer error(String msg, Object obj){
        return new RespContainer(500, msg,obj);
    }
}
