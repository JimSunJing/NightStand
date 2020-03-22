package com.jimmy.controller.Recommend;

import com.jimmy.entity.RecommendList;
import com.jimmy.entity.RespContainer;
import com.jimmy.service.RecommendListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/recommendlist/basic")
public class RecommendListController {

    @Autowired
    private RecommendListService recommendListService;

    @GetMapping("/{id}")
    public RecommendList findById(@PathVariable(value = "id",required = true) Integer id){
        return recommendListService.findById(id);
    }

    @GetMapping("/movie/page/{page}/{size}")
    public List<RecommendList> findByPageMovie(@PathVariable(value = "page",required = true)Integer page,
                                          @PathVariable(value = "size",required = true)Integer size){
        return recommendListService.findPageOrderByTimeMovie(page,size);
    }

    @GetMapping("/book/page/{page}/{size}")
    public List<RecommendList> findByPageBook(@PathVariable(value = "page",required = true)Integer page,
                                          @PathVariable(value = "size",required = true)Integer size){
        return recommendListService.findPageOrderByTimeBook(page,size);
    }

    @GetMapping("/music/page/{page}/{size}")
    public List<RecommendList> findByPageMusic(@PathVariable(value = "page",required = true)Integer page,
                                          @PathVariable(value = "size",required = true)Integer size){
        return recommendListService.findPageOrderByTimeMusic(page,size);
    }

    /**
     * 新建插入
     * @param recommendList
     * @return
     */
    @PostMapping("/")
    public RespContainer insertRecommend(@RequestBody RecommendList recommendList){
        if (recommendListService.insertRecommendList(recommendList)==1){
            return RespContainer.ok("提交成功！");
        }else {
            return RespContainer.error("提交失败");
        }
    }



}
