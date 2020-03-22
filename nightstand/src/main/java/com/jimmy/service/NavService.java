package com.jimmy.service;

import com.jimmy.entity.Nav;
import com.jimmy.entity.Role;
import com.jimmy.mapper.NavMapper;
import com.jimmy.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

@Service
public class NavService {

    @Autowired
    private NavMapper navMapper;

    @Cacheable(value = "NavCache", key = "'all'", cacheManager = "caffeineMinutesCache")
    public List<Nav> findAllMenuWithRole(){
        return navMapper.findAll();
    }

    public List<Nav> getNavByUserId(){
        Set<Role> roles = SecurityUtils.getCurrentUser().getRoles();
        return getNavByRoles(roles);
    }

    @Cacheable(value = "NavCache", key = "#roles", cacheManager = "caffeineMinutesCache")
    public List<Nav> getNavByRoles(Set<Role> roles){
        return navMapper.getNavByRoles(roles);
    }
}
