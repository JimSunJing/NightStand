package com.jimmy.test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jimmy.NightstandApplication;
import com.jimmy.entity.Finished;
import com.jimmy.entity.PageContainer;
import com.jimmy.entity.Scheduled;
import com.jimmy.entity.Waiting;
import com.jimmy.service.FinishedService;
import com.jimmy.service.ScheduledService;
import com.jimmy.service.WaitingService;
import com.jimmy.utils.format.dateFormatUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = NightstandApplication.class)
public class ScheduleTest {

    @Autowired
    private ScheduledService scheduledService;

    @Autowired
    private WaitingService waitingService;

    @Autowired
    private FinishedService finishedService;

    @Test
    public void getById() {
        Scheduled scheduled = scheduledService.findById(1);
        System.out.println(scheduled);
    }

    @Test
    public void getScheduleByDate() throws JsonProcessingException {
        Date date = dateFormatUtils.string2Date("2020-03-16");
        System.out.println(new ObjectMapper().writeValueAsString(scheduledService.getScheduledListByDate(date,1)));
    }

    // =================waiting==============

    @Test
    public void insertW(){
        Waiting waiting = new Waiting();
        waiting.setUid(1);
        waiting.setEventId("3");
        waiting.setEventType('m');
        waitingService.insertWaiting(waiting);
        System.out.println(waiting);
    }

    @Test
    public void delW() {
        waitingService.findByUid(1);
        waitingService.deleteById(1);
        waitingService.findByUid(1);
    }

    @Test
    public void insertlist() {
        List<Waiting> list = new ArrayList<>();
//        list.add(new Waiting(1,"tt97892",'i'));
//        list.add(new Waiting(1,"13028482",'b'));
        waitingService.insertWaitingList(list);
        List<Waiting> waitings = waitingService.findByUid(1);
        for (Waiting waiting : waitings) {
            System.out.println(waiting);
        }
    }

    @Test
    public void page() throws JsonProcessingException {
        PageContainer container = waitingService.getByUidPages(1, 1, 5);
        System.out.println(new ObjectMapper().writeValueAsString(container));
    }

    // ==================finished===============


    @Test
    public void insertF() {
        Finished finished = new Finished();
        finished.setUid(1);
        finished.setEventId("123");
        finished.setEventType('m');
        finished.setDate(new Date());
        finished.setComment("hahah 很好看");
        finishedService.insertFinished(finished);

    }

    @Test
    public void findByuid() {
        List<Finished> list = finishedService.findByUid(1);
        for (Finished finished : list) {
            System.out.println(list);
        }
    }

    @Test
    public void setFini() {
        Scheduled scheduled = scheduledService.findById(1);
        Finished finished = new Finished(scheduled.getUid(), scheduled.getEventId(), scheduled.getEventType(),null, new Date(),null);
        scheduledService.setFinished(finished,1);
    }

    @Test
    public void finpage() throws JsonProcessingException {
        Finished finished = new Finished(1,null,'f',null,null,null);
        PageContainer container = finishedService.findByPage(finished, 1, 3,"desc");
        System.out.println(new ObjectMapper().writeValueAsString(container));
    }

    @Test
    public void cacheTest() {
        Map<String, Integer> map = finishedService.getTotalByUid(1);
        System.out.println(map);
        Map<String, Integer> map2 = finishedService.getTotalByUid(1);
        System.out.println(map2);
    }
}
