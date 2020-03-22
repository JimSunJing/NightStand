package com.jimmy.mapper;

import com.jimmy.entity.PageContainer;
import com.jimmy.entity.Waiting;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WaitingMapper {

    List<Waiting> findByUid(Integer uid);

    List<Waiting> findByPage(@Param("waiting") Waiting waiting,@Param("start") Integer start,@Param("size") Integer size);

    int getTotal(Waiting waiting);

    int insertWaiting(Waiting waiting);

    int insertWaitingList(@Param("list") List<Waiting> waitingList);

    int deleteWaiting(Waiting waiting);

    int deleteById(Integer id);

}
