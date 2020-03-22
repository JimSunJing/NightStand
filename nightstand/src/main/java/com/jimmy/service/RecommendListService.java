package com.jimmy.service;

import com.jimmy.entity.RecommendList;
import com.jimmy.mapper.RecommendListMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecommendListService {

    @Autowired
    private RecommendListMapper recommendListMapper;

    public RecommendList findById(Integer id){
        return recommendListMapper.findById(id);
    }

    public List<RecommendList> findByUid(Integer uid){
        return recommendListMapper.findByUid(uid);
    }

    public List<RecommendList> findPageOrderByTimeMovie(Integer page, Integer size){
        return recommendListMapper.findPageOrderByTimeMovie(Math.max((page-1)*size,0),size);
    }

    public List<RecommendList> findPageOrderByTimeBook(Integer page, Integer size){
        return recommendListMapper.findPageOrderByTimeBook(Math.max((page-1)*size,0),size);
    }

    public List<RecommendList> findPageOrderByTimeMusic(Integer page, Integer size){
        return recommendListMapper.findPageOrderByTimeMusic(Math.max((page-1)*size,0),size);
    }

    public int insertRecommendList(RecommendList recommendList){
        return recommendListMapper.insertRecommendList(recommendList);
    }

}
