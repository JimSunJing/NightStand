package com.jimmy.controller.system;

import com.jimmy.entity.RespContainer;
import com.jimmy.entity.User;
import com.jimmy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 用于注册页面的controller，可以在未登录的状态被调用
 */
@RestController
@RequestMapping("/user/sys")
public class SysUserController {

    @Autowired
    private UserService userService;

    @GetMapping("/uname/{username}")
    public Boolean checkUserName(@PathVariable(value = "username")String username){
        return userService.countUserName(username) > 0;
    }

    @GetMapping("/activate/{code}")
    public String activateUser(@PathVariable(value = "code")String code){
        if (userService.activateUser(code)==1){
            return "激活成功";
        }else {
            return "激活失败";
        }
    }

    @PostMapping("/")
    public RespContainer signIn(@RequestBody User signInUser){
        if(userService.signInUser(signInUser)==2){
            return RespContainer.ok("注册成功，请在邮箱激活账户");
        }else {
            return RespContainer.error("注册失败，请检查表单或联系管理员");
        }
    }
}
