package com.jimmy.service;

import com.jimmy.entity.PageContainer;
import com.jimmy.entity.Scheduled;
import com.jimmy.entity.Waiting;
import com.jimmy.mapper.ScheduledMapper;
import com.jimmy.mapper.WaitingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WaitingService {

    @Autowired
    private WaitingMapper waitingMapper;

    @Autowired
    private ScheduledMapper scheduledMapper;

    public List<Waiting> findByUid(Integer uid){
        return waitingMapper.findByUid(uid);
    }

    @Cacheable(value = "pageTotalCache",key = "#waiting")
    public int getTotal(Waiting waiting){
        return waitingMapper.getTotal(waiting);
    }

    public PageContainer getByUidPages(Integer uid, Integer page, Integer size){
        return getByUidPagesWithType(uid,page,size,"a");
    }

    public PageContainer getByUidPagesWithType(Integer uid, Integer page, Integer size,String type){
        PageContainer container = new PageContainer();
        Waiting waiting = new Waiting(uid,null,type.charAt(0)=='a'?null:type.charAt(0),null);
        container.setItems(waitingMapper.findByPage(waiting,((page-1)*size),size));
        container.setTotal(this.getTotal(waiting));
        return container;
    }

    public int addToScheduled(Scheduled scheduled, Integer wid){
        return scheduledMapper.addScheduled(scheduled) + waitingMapper.deleteById(wid);
    }

    public int insertWaiting(Waiting waiting){
        return waitingMapper.insertWaiting(waiting);
    }

    public int insertWaitingList(List<Waiting> waitingList){
        return waitingMapper.insertWaitingList(waitingList);
    }

    public int deleteWaiting(Waiting waiting) {
        return waitingMapper.deleteWaiting(waiting);
    }

    public int deleteById(Integer wid){
        return waitingMapper.deleteById(wid);
    }

}
