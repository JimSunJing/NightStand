package com.jimmy.mapper;

import com.jimmy.entity.RecommendList;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecommendListMapper {

    RecommendList findById(Integer id);

    List<RecommendList> findByUid(Integer uid);

    List<RecommendList> findPageOrderByTimeMovie(@Param("start") Integer start,@Param("size") Integer size);

    List<RecommendList> findPageOrderByTimeBook(@Param("start") Integer start,@Param("size") Integer size);

    List<RecommendList> findPageOrderByTimeMusic(@Param("start") Integer start,@Param("size") Integer size);

    int insertRecommendList(RecommendList recommendList);

}
