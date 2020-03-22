package com.jimmy.test;

import com.jimmy.NightstandApplication;
import com.jimmy.entity.Nav;
import com.jimmy.entity.Role;
import com.jimmy.service.NavService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = NightstandApplication.class)
public class NavTest {

    @Autowired
    private NavService navService;

    @Test
    public void findall() {
        List<Nav> list = navService.findAllMenuWithRole();
        for (Nav nav : list) {
            System.out.println(nav);
        }
    }

    @Test
    public void findbyroles() {
        Set<Role> roles = new HashSet<>();
        Role role1 = new Role();
        role1.setId(5);
        roles.add(role1);
        List<Nav> navList = navService.getNavByRoles(roles);
        for (Nav nav : navList) {
            System.out.println(nav);
        }
    }
}
