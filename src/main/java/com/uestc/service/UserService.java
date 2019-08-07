package com.uestc.service;

import com.uestc.entity.User;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author Mardan
 * @IntefaceName UserService
 * @Description 用户业务接口
 * @Date 2019/6/14 12:52
 * @Version 1.0
 **/
public interface UserService {
    /**
     * @Author Mardan
     * @Description 用户登录验证服务
     * @Date 16:54 2019/6/5
     * @Param [userName, userPassword]
     * @return com.uestc.entity.User
     **/
    User selectUserByNameAndPassword(String userName, String userPassword);

    /**
     * @Author Mardan
     * @Description 更新当前用户的Session
     * @Date 16:54 2019/6/5
     * @Param [session]
     * @return com.uestc.entity.User
     **/
    User updateUserSession(HttpSession session);

    /**
     * @return com.uestc.entity.User
     * @Author Mardan
     * @Description 根据用户id查询用户的全部信息
     * @Date 23:18 2019/4/10
     * @Param [userId]
     **/
    User selectUserById(String userId);

    /**
     * @Author Mardan
     * @Description 根据用户名查询用户信息
     * @Date 8:09 2019/6/6
     * @Param [userName]
     * @return com.uestc.entity.User
     **/
    User selectUserByName(String userName);

    /**
     * @Author Mardan
     * @Description 根据用户邮箱查询用户信息
     * @Date 11:21 2019/5/12
     * @Param [userEmail]
     * @return com.uestc.entity.User
     **/
    User selectUserByEmail(String userEmail);

    /**
     * @return java.lang.String
     * @Author Mardan
     * @Description 用户注册验证服务
     * @Date 10:47 2019/4/8
     * @Param [user]
     **/
    String insertUserRegInfo(User user);

    /**
     * @Author Mardan
     * @Description 注销登录用户session
     * @Date 8:30 2019/6/6
     * @Param [session]
     * @return void
     **/
    void deleteUserSession(HttpSession session);

    /**
     * @return void
     * @Author Mardan
     * @Description 忘记密码时由邮箱重置密码服务
     * @Date 23:16 2019/4/10
     * @Param [userEmail, userPassword]
     **/
    void updateResetPasswordByEmail(String userEmail, String userPassword);

    /**
     * @Author Mardan
     * @Description 返回当前身份相对所有身份的补集
     * @Date 13:43 2019/6/6
     * @Param [userIdentity]
     * @return java.util.List<java.lang.String>
     **/
    List<String> findElseIdentityList(String userIdentity);

    /**
     * @return java.lang.String
     * @Author Mardan
     * @Description 修改用户基本资料
     * @Date 23:20 2019/4/10
     * @Param [user]
     **/
    String updateResetUserInfo(User user);

    /**
     * @return void
     * @Author Mardan
     * @Description 重置当前用户密码
     * @Date 23:20 2019/4/10
     * @Param [userPassword, userId]
     **/
    void updateResetPasswordByUserId(String userPassword, String userId);

    /**
     * @return void
     * @Author Mardan
     * @Description 更改绑定邮箱
     * @Date 10:27 2019/4/11
     * @Param [userOldEmail, userNewEmail]
     **/
    void updateResetEmailByEmail(String userOldEmail, String userNewEmail);
}