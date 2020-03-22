package com.jimmy.mapper;

import com.jimmy.entity.MailSendLog;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface MailSendLogMapper {

    int insert(MailSendLog mailSendLog);

    int updateStatus(@Param("msgId")String msgId,@Param("status")Integer status, @Param("date")Date date);

    int updateCount(@Param("msgId") String msgId, @Param("date")Date date);

}
