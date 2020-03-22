package com.jimmy.service;

import com.jimmy.entity.User;
import com.jimmy.entity.UserMailVO;
import com.jimmy.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MailService mailService;

    public List<User> findAll(){
        return userMapper.findAll();
    }

    /**
     * 用于给spring security提供登陆查询
     * @param username 登陆输入的username
     * @return spring security使用的userDetail对象
     * @throws UsernameNotFoundException
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userMapper.findByUserName(username);
        if (user==null){
            throw new UsernameNotFoundException("找不到该用户");
        }
        return user;
    }

    /**
     * 前端获取用户信息
     * @param id 用户id
     * @return 用户信息
     */
    @Cacheable(value = "UserInfoCache",key = "#id",cacheManager = "caffeineMinutesCache")
    public User userInfoById(Integer id){
        User user = userMapper.findById(id);
        // 将敏感信息隐藏
        user.setEmail("");
        user.setPassword("");
        return user;
    }

    /**
     * 返回username是否已经被注册
     * @param username 检测username
     * @return username被使用次数
     */
    public int countUserName(String username){
        return userMapper.countUserName(username);
    }

    /**
     * 注册用户
     * @param user 前端传入的用户封装对象
     * @return sql执行影响的行数
     */
    public int signInUser(User user){
        // 密码加密
        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        user.setEnabled(false);
        // 激活码
        String code = UUID.randomUUID().toString();
        user.setCode(code);
        // 添加用户
        int insert1 = userMapper.insertUser(user);
        // 设置基础权限
        int insert2 = userMapper.addRole(user.getId(), 5);
        // 发送邮箱验证
        UserMailVO mailVO = new UserMailVO();
        mailVO.setUid(user.getId());
        mailVO.setUsername(user.getUsername());
        mailVO.setMail(user.getEmail());
        mailVO.setActivateCode(user.getCode());
        mailService.sendActivateMail(mailVO);
        // 返回信息
        return insert1 + insert2;
    }

    public int activateUser(String code){
        return userMapper.activate(code);
    }

}
