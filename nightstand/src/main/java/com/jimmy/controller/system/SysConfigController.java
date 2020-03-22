package com.jimmy.controller.system;

import com.jimmy.entity.Nav;
import com.jimmy.service.NavService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/system/config")
public class SysConfigController {

    @Autowired
    private NavService navService;

    @GetMapping("/nav")
    public List<Nav> getNavByUserId(){
        return navService.getNavByUserId();
    }
}
