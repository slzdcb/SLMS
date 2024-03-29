package com.uestc.service;

import com.github.pagehelper.PageInfo;
import com.uestc.dto.college.CollegeDto;
import com.uestc.dto.college.CollegeSearchDto;
import com.uestc.dto.other.MyPage;
import com.uestc.entity.College;
import com.uestc.entity.User;

import java.util.List;

/**
 * @Author Mardan
 * @IntefaceName CollegeService
 * @Description 学院业务接口
 * @Date 2019/6/14 12:52
 * @Version 1.0
 **/
public interface CollegeService {
    /**
     * @Author Mardan
     * @Description 找出所有的学院
     * @Date 13:34 2019/6/14
     * @Param []
     * @return java.util.List<com.uestc.entity.College>
     **/
    List<College> selectAllCollege();

    /**
     * @Author Mardan
     * @Description 返回符合的学院信息的分页结果
     * @Date 13:21 2019/7/25
     * @Param [myPage, collegeSearchDto]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.college.CollegeDto>
     **/
    PageInfo<CollegeDto> selectAllCollegeInfo(MyPage myPage, CollegeSearchDto collegeSearchDto);

    /**
     * @Author Mardan
     * @Description 返回用户名对应的学院及其附带信息分页结果
     * @Date 19:40 2019/7/10
     * @Param [myPage, user]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.college.CollegeDto>
     **/
    PageInfo<CollegeDto> selectCollegeOwnInfoByNum(MyPage myPage, User user);

    /**
     * @Author Mardan
     * @Description 根据业务逻辑返回更新学院ajax的map键data值
     * @Date 9:51 2019/7/14
     * @Param [collegeOriId, collegeOriName, collegeDto]
     * @return java.lang.String
     **/
    String updateCollegeInfo(String collegeOriId, String collegeOriName, CollegeDto collegeDto);

    /**
     * @Author Mardan
     * @Description 根据业务逻辑返回更新学院ajax的map键data值
     * @Date 15:05 2019/7/14
     * @Param [collegeDto]
     * @return java.lang.String
     **/
    String insertCollege(CollegeDto collegeDto);

    /**
     * @Author Mardan
     * @Description 删除学院业务
     * @Date 15:58 2019/7/14
     * @Param [collegeName]
     * @return void
     **/
    void deleteOneCollege(String collegeName);

    /**
     * @Author Mardan
     * @Description 删除多个学院
     * @Date 16:06 2019/7/14
     * @Param [collegeNames]
     * @return void
     **/
    void deleteManyColleges(List<String> collegeNames);
}
