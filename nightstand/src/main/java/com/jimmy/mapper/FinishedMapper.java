package com.jimmy.mapper;

import com.jimmy.entity.Finished;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FinishedMapper {

    List<Finished> findByUid(Integer uid);

    List<Finished> findByPage(@Param("fin") Finished finished,@Param("start") Integer start,
                              @Param("size") Integer size,@Param("sort")String sort);

    int getTotal(Finished finished);

    int insertFinished(Finished finished);

    int insertFinishedList(@Param("list") List<Finished> finishedList);

}
