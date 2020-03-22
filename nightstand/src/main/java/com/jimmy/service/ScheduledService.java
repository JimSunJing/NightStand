package com.jimmy.service;

import com.jimmy.entity.Finished;
import com.jimmy.entity.Scheduled;
import com.jimmy.entity.Waiting;
import com.jimmy.mapper.FinishedMapper;
import com.jimmy.mapper.ScheduledMapper;
import com.jimmy.mapper.WaitingMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ScheduledService {

    @Autowired
    private ScheduledMapper scheduledMapper;

    @Autowired
    private FinishedMapper finishedMapper;

    @Autowired
    private WaitingMapper waitingMapper;

    @Cacheable("scheduleCache")
    public List<Scheduled> getScheduledListByDate(Date date, Integer uid){
        return scheduledMapper.findByDate(date, uid);
    }

    public Scheduled findById(Integer sid){
        return scheduledMapper.findById(sid);
    }

    @CacheEvict(value = "scheduleCache",allEntries = true)
    public int addScheduled(Scheduled scheduled){
        return scheduledMapper.addScheduled(scheduled);
    }

    @CacheEvict(value = "scheduleCache",allEntries = true)
    public int updateScheduled(Scheduled scheduled){
        return scheduledMapper.updateScheduled(scheduled);
    }

    @CacheEvict(value = "scheduleCache",allEntries = true)
    public int postPoneScheduled(@Param("sid") Integer sid, @Param("targetDate") Date targetDate){
        return scheduledMapper.postPoneScheduled(sid,targetDate);
    }

    @CacheEvict(value = "scheduleCache",allEntries = true)
    public int setFinished(Finished finished, int sid){
        return (finishedMapper.insertFinished(finished)+scheduledMapper.setAchieved(sid));
    }

    @CacheEvict(value = "scheduleCache",allEntries = true)
    public int returnToWaiting(Scheduled scheduled){
        Waiting waiting = new Waiting(scheduled.getUid(), scheduled.getEventId(),
                scheduled.getEventType(), scheduled.getTitle());
        return waitingMapper.insertWaiting(waiting)+scheduledMapper.deleteById(scheduled.getId());
    }

}
