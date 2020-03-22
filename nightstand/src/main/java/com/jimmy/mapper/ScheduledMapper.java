package com.jimmy.mapper;

import com.jimmy.entity.Scheduled;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface ScheduledMapper {

    List<Scheduled> findByDate(@Param("date") Date date, @Param("uid") Integer uid);

    Scheduled findById(Integer sid);

    int addScheduled(Scheduled scheduled);

    int updateScheduled(Scheduled scheduled);

    int postPoneScheduled(@Param("sid") Integer sid, @Param("targetDate") Date targetDate);

    int setAchieved(int sid);

    int deleteById(Integer sid);

}
