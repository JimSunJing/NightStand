package com.jimmy.test;

import com.jimmy.NightstandApplication;
import com.jimmy.entity.User;
import com.jimmy.service.UserService;
import com.jimmy.utils.SecurityUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = NightstandApplication.class)
public class UserTest {

    @Autowired
    private UserService userService;

    @Test
    public void findall() {
        List<User> userList = userService.findAll();
        for (User user : userList) {
            System.out.println(user);
        }
    }

    @Test
    public void securityUser() {
        User currentUser = SecurityUtils.getCurrentUser();
        System.out.println(currentUser);
    }

    @Test
    public void findbyusername() {
        UserDetails jack = userService.loadUserByUsername("jack");
        System.out.println(jack);
    }

    @Test
    public void insertTest() {
        User user = new User();
        user.setUsername("rose");
        user.setPassword("123");
        user.setEmail("642861404@qq.com");
        user.setName("ROSE");
        user.setDesc("我是泰坦尼克号生存下来的人...");
        System.out.println(userService.signInUser(user));
    }
}
