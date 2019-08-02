package com.uestc.dao;

import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public interface StudentDao {

    Map<String,Object> Login(String username);
    int studentLogin(String username, String password);
}
