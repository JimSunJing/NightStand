package com.jimmy.controller.schedule;

import com.jimmy.entity.PageContainer;
import com.jimmy.entity.RespContainer;
import com.jimmy.entity.Scheduled;
import com.jimmy.entity.Waiting;
import com.jimmy.service.WaitingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/wait/basic")
public class WaitingController {

    @Autowired
    private WaitingService waitingService;

    @GetMapping("/{uid}")
    public List<Waiting> getByUId(@PathVariable(value = "uid",required = true) Integer uid){
        return waitingService.findByUid(uid);
    }

    @GetMapping("/{uid}/{page}/{size}/{type}")
    public PageContainer getByUidPages(@PathVariable(value = "uid",required = true) Integer uid,
                                       @PathVariable(value = "page",required = true) Integer page,
                                       @PathVariable(value = "size",required = true) Integer size,
                                       @PathVariable(value = "type",required = true) String type){
        return waitingService.getByUidPagesWithType(uid,page,size,type);
    }


    @PostMapping("/")
    public RespContainer insertWaiting(@RequestBody Waiting waiting){
        if (waitingService.insertWaiting(waiting)==1){
            return RespContainer.ok("添加成功");
        }else {
            return RespContainer.error("添加失败");
        }
    }

    @PutMapping("/{wid}")
    public RespContainer addToScheduled(@RequestBody Scheduled scheduled, @PathVariable("wid")Integer wid){
        if (waitingService.addToScheduled(scheduled,wid)==2){
            return RespContainer.ok("添加成功");
        }else{
            return RespContainer.error("添加失败");
        }
    }

    @DeleteMapping("/{wid}")
    public RespContainer deleteWaiting(@PathVariable(value = "wid",required = true)Integer wid){
        if (waitingService.deleteById(wid)==1){
            return RespContainer.ok("删除成功");
        }else {
            return RespContainer.error("删除失败");
        }
    }

    @DeleteMapping("/{uid}/{eid}/{etype}")
    public RespContainer deleteWaiting(@PathVariable(value = "uid",required = true)Integer uid,
                                       @PathVariable(value = "eid",required = true)String eid,
                                       @PathVariable(value = "etype",required = true)Character etype){
        Waiting toDel = new Waiting();
        toDel.setUid(uid);
        toDel.setEventId(eid);
        toDel.setEventType(etype);
        if (waitingService.deleteWaiting(toDel)==1){
            return RespContainer.ok("删除成功");
        }else {
            return RespContainer.error("删除失败");
        }
    }




}
