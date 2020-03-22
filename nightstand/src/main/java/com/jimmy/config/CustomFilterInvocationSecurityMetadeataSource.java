package com.jimmy.config;

import com.jimmy.entity.Nav;
import com.jimmy.entity.Role;
import com.jimmy.service.NavService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.AntPathMatcher;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/**
 * 每次url访问的角色验证信息提供
 */
@Component
public class CustomFilterInvocationSecurityMetadeataSource implements FilterInvocationSecurityMetadataSource {

    @Autowired
    private NavService navService;

    AntPathMatcher antPathMatcher = new AntPathMatcher();

    @Override
    public Collection<ConfigAttribute> getAttributes(Object o) throws IllegalArgumentException {
        String requestUrl = ((FilterInvocation) o).getRequestUrl();
        // 注册和激活用户允许通过
        if(antPathMatcher.match("/user/sys/**",requestUrl)){
            ArrayList<String> roleStrs = new ArrayList<>();
            roleStrs.add("ROLE_ALLOW");
            System.out.println("MAIL ACTIVATE DETECTED");
            return SecurityConfig.createList(roleStrs.toArray(new String[roleStrs.size()]));
        }
        List<Nav> navList = navService.findAllMenuWithRole();
        for (Nav nav : navList) {
            if (antPathMatcher.match(nav.getUrl(),requestUrl)){
                Set<Role> roles = nav.getNavRoles();
                ArrayList<String> roleStrs = new ArrayList<>();
                for (Role role : roles) {
                    roleStrs.add("ROLE_"+role.getName());
                }
                return SecurityConfig.createList(roleStrs.toArray(new String[roleStrs.size()]));
            }
        }
        return SecurityConfig.createList("ROLE_LOGIN");
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }
}
