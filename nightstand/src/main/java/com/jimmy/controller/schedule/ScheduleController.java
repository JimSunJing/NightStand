package com.jimmy.controller.schedule;

import com.jimmy.entity.Finished;
import com.jimmy.entity.RespContainer;
import com.jimmy.entity.Scheduled;
import com.jimmy.service.ScheduledService;
import com.jimmy.utils.format.dateFormatUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/schedule/basic")
public class ScheduleController {

    @Autowired
    private ScheduledService scheduledService;

    @GetMapping("/list/{date}/{uid}")
    public List<Scheduled> getScheduledListByDate(@PathVariable(value = "date", required = true) Date date,
                                                  @PathVariable(value = "uid", required = true) Integer uid) {
        log.info("date: {}, uid: {}",date,uid);
        return scheduledService.getScheduledListByDate(date, uid);
    }

    @GetMapping("/{sid}")
    public Scheduled getScheduledById(@PathVariable(value = "sid", required = true) Integer sid){
        return scheduledService.findById(sid);
    }

    @PostMapping("/")
    public RespContainer addScheduled(@RequestBody Scheduled scheduled){
        int res = scheduledService.addScheduled(scheduled);
        if (res==1){
            return RespContainer.ok("规划添加成功！");
        }else{
            return RespContainer.error("失败！");
        }
    }

    @PutMapping("/update")
    public RespContainer updateScheduled(@RequestBody Scheduled scheduled){
        if (scheduledService.updateScheduled(scheduled) == 1){
            return RespContainer.ok("更新成功");
        }else {
            return RespContainer.error("更新失败");
        }
    }

    /**
     * 计划日期变更
     * @param date 目标日期
     * @param sid scheduled id
     * @return
     */
    @PutMapping("/re/{date}/{sid}")
    public RespContainer reschedule(@PathVariable(value = "date",required = true) Date date,
                                    @PathVariable(value = "sid",required = true) Integer sid){
        if (scheduledService.postPoneScheduled(sid, date) == 1){
            return RespContainer.ok("修改成功");
        }else {
            return RespContainer.error("修改失败");
        }
    }

    /**
     * 将计划项目设置为完成
     * @param finished 在前端就封装好finished对象
     * @return
     */
    @PutMapping("/fin/{sid}")
    public RespContainer setFinished(@RequestBody Finished finished,@PathVariable int sid){
        if (finished.getUid()!=null && scheduledService.setFinished(finished,sid)==2){
            return RespContainer.ok("设置成功");
        }else {
            return RespContainer.error("设置失败");
        }
    }

    /**
     * 将计划搁置，退回waiting list
     * @param scheduled
     * @return
     */
    @DeleteMapping("/return")
    public RespContainer returnToWaiting(@RequestBody Scheduled scheduled){
        if (scheduledService.returnToWaiting(scheduled)==2){
            return RespContainer.ok("退回成功");
        }else{
            return RespContainer.error("退回失败");
        }
    }


}
