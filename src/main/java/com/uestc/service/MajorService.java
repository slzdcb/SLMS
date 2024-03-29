package com.uestc.service;

import com.github.pagehelper.PageInfo;
import com.uestc.dto.major.MajorSearchDto;
import com.uestc.dto.major.MajorWithCollegeDto;
import com.uestc.dto.other.MyPage;
import com.uestc.entity.Major;
import com.uestc.entity.User;

import java.util.List;

/**
 * @Author Mardan
 * @IntefaceName MajorService
 * @Description 专业业务接口
 * @Date 2019/6/14 12:52
 * @Version 1.0
 **/
public interface MajorService {
    /**
     * @return java.util.List<com.uestc.entity.Major>
     * @Author Mardan
     * @Description 返回符合条件的专业信息
     * @Date 22:57 2019/4/18
     * @Param [collegeName]
     **/
    List<Major> selectMajorByCollegeName(String collegeName);

    /**
     * @Author Mardan
     * @Description 返回符合条件的专业信息的分页结果
     * @Date 16:38 2019/7/8
     * @Param [myPage, majorSearch]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.major.MajorWithCollegeDto>
     **/
    PageInfo<MajorWithCollegeDto> selectAllMajorInfo(MyPage myPage, MajorSearchDto majorSearch);

    /**
     * @Author Mardan
     * @Description 返回用户名对应的专业及其附带信息分页结果
     * @Date 17:19 2019/7/8
     * @Param [myPage, user]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.major.MajorWithCollegeDto>
     **/
    PageInfo<MajorWithCollegeDto> selectMajorOwnInfoByNum(MyPage myPage, User user);

    /**
     * @Author Mardan
     * @Description 根据业务逻辑返回更新专业ajax的map键data值
     * @Date 8:58 2019/7/12
     * @Param [majorOriId, majorOriName, majorWC]
     * @return java.lang.String
     **/
    String updateMajorInfo(String majorOriId, String majorOriName, MajorWithCollegeDto majorWC);

    /**
     * @Author Mardan
     * @Description 根据业务逻辑返回更新专业ajax的map键data值
     * @Date 8:37 2019/7/14
     * @Param [majorWC]
     * @return java.lang.String
     **/
    String insertMajor(MajorWithCollegeDto majorWC);

    /**
     * @Author Mardan
     * @Description 删除专业业务
     * @Date 8:57 2019/7/14
     * @Param [majorName]
     * @return void
     **/
    void deleteOneMajor(String majorName);

    /**
     * @Author Mardan
     * @Description 删除多个专业业务
     * @Date 9:17 2019/7/14
     * @Param [majorNames]
     * @return void
     **/
    void deleteManyMajors(List<String> majorNames);
}
