package com.jimmy.controller.schedule;

import com.jimmy.entity.Finished;
import com.jimmy.entity.PageContainer;
import com.jimmy.entity.RespContainer;
import com.jimmy.service.FinishedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/finished/basic")
public class FinishedController {

    @Autowired
    private FinishedService finishedService;

    @GetMapping("/{uid}")
    public List<Finished> findByUid(@PathVariable(value = "uid",required = true)Integer uid){
        return finishedService.findByUid(uid);
    }

    @GetMapping("/count/{uid}")
    public Map<String, Integer> getTotal(@PathVariable(value = "uid",required = true)Integer uid){
        return finishedService.getTotalByUid(uid);
    }

    @GetMapping("/{uid}/{page}/{size}/{type}/{sort}")
    public PageContainer findByPage(@PathVariable(value = "uid",required = true)Integer uid,
                                    @PathVariable(value = "page",required = true)Integer page,
                                    @PathVariable(value = "size",required = true)Integer size,
                                    @PathVariable(value = "type",required = false)String type,
                                    @PathVariable(value = "sort", required = false)String sort){
        Finished finished = new Finished();
        finished.setUid(uid);
        if (type!=null && type.charAt(0)!='a') finished.setEventType(type.charAt(0));
        return finishedService.findByPage(finished,page,size,sort);
    }

    @PostMapping("/")
    public RespContainer insertFinshed(@RequestBody Finished finished){
        if (finishedService.insertFinished(finished)==1){
            return RespContainer.ok("添加成功");
        }else {
            return RespContainer.error("添加失败");
        }
    }

}
