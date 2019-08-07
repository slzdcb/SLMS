package com.uestc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @ClassName CardController
 * @Description 一卡通业务控制器
 * 处理一卡通相关的页面跳转、增删改查ajax请求。
 * 该控制类都有根请求路径/card
 * @Date 2019/4/16 15:26
 * @Version 1.0
 **/
@Controller
@RequestMapping("/card")
public class DormitoryController extends BaseController{

    /**
     * @return java.lang.String
     * @Author Mardan
     * @Description 定向到班级信息查询页面cardInfoQuery.jsp
     * @Date 22:48 2019/4/18
     * @Param []
     **/
    @RequestMapping("/query")
    public String query() {
        return "app/query/cardInfoQuery";
    }
}
