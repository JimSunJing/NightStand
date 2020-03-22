package com.jimmy.mapper;

import com.jimmy.entity.Nav;
import com.jimmy.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface NavMapper {

    List<Nav> findAll();

    List<Nav> getNavByRoles(@Param("roles") Set<Role> roles);
}
