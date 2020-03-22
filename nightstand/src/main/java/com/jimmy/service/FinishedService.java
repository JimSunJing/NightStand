package com.jimmy.service;

import com.jimmy.entity.Finished;
import com.jimmy.entity.PageContainer;
import com.jimmy.mapper.FinishedMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FinishedService {

    @Autowired
    private FinishedMapper finishedMapper;

    public List<Finished> findByUid(Integer uid){
        return finishedMapper.findByUid(uid);
    }

    @Cacheable(value = "pageTotalCache",key = "#finished")
    public int getTotal(Finished finished){
        return finishedMapper.getTotal(finished);
    }

    public PageContainer findByPage(Finished finished,Integer page, Integer size, String sort){
        return new PageContainer(this.getTotal(finished),
                finishedMapper.findByPage(finished,Math.max((page-1)*size,0),size,sort));
    }

    @Cacheable(value = "UserTotalCache", key = "#uid")
    public Map<String,Integer> getTotalByUid(Integer uid){
        Map<String,Integer> hashMap = new HashMap<>();
        Finished finished = new Finished(uid, null, 'f', null, null, null);
        hashMap.put("f",finishedMapper.getTotal(finished));
        finished.setEventType('b');
        hashMap.put("b",finishedMapper.getTotal(finished));
        finished.setEventType('m');
        hashMap.put("m",finishedMapper.getTotal(finished));
        return hashMap;
    }

    public int insertFinished(Finished finished){
        return finishedMapper.insertFinished(finished);
    }

    public int insertFinishedList(List<Finished> finishedList){
        return finishedMapper.insertFinishedList(finishedList);
    }

}
