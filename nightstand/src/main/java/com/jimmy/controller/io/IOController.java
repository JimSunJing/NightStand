package com.jimmy.controller.io;

import com.jimmy.entity.Finished;
import com.jimmy.entity.RespContainer;
import com.jimmy.entity.Waiting;
import com.jimmy.service.FinishedService;
import com.jimmy.service.WaitingService;
import com.jimmy.utils.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/io")
public class IOController {

    @Autowired
    private WaitingService waitingService;

    @Autowired
    private FinishedService finishedService;

    @PostMapping("/waiting/{uid}")
    public RespContainer importWaitData(@RequestBody MultipartFile file, @PathVariable("uid") Integer uid) throws IOException{
        List<Waiting> waitingList = IOUtils.csv2Waiting(file, uid);
        if (waitingService.insertWaitingList(waitingList)>0){
            return RespContainer.ok("导入成功！");
        }else {
            return RespContainer.error("导入失败");
        }
    }

    @PostMapping("/finished/{uid}")
    public RespContainer importFinData(@RequestBody MultipartFile file, @PathVariable("uid") Integer uid) throws IOException{
        List<Finished> finishedList = IOUtils.csv2Finshed(file, uid);
        if (finishedService.insertFinishedList(finishedList)>0){
            return RespContainer.ok("导入成功");
        }else {
            return RespContainer.error("导入失败");
        }
    }

}
