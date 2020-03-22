package com.jimmy.controller;

import com.jimmy.entity.RespContainer;
import com.jimmy.entity.User;
import com.jimmy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user/info")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/{id}")
    public User getUserInfoById(@PathVariable(value = "id",required = true) Integer id){
        return userService.userInfoById(id);
    }

}
