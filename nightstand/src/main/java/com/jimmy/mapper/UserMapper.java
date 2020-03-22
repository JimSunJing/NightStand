package com.jimmy.mapper;

import com.jimmy.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {

    List<User> findAll();

    User findById(Integer id);

    User findByUserName(String username);

    int countUserName(String username);

    int insertUser(User user);

    int addRole(@Param("uid") Integer uid,@Param("rid") Integer rid);

    int activate(String code);

}
