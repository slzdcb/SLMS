package com.uestc.dao;

import com.uestc.dto.major.MajorSearchDto;
import com.uestc.dto.major.MajorWithCollegeDto;
import com.uestc.entity.Major;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Mardan
 * @IntefaceName MajorMapper
 * @Description 专业业务持久层接口
 * @Date 2019/6/14 13:00
 * @Version 1.0
 **/
@Repository
public interface MajorMapper {
    /**
     * @return java.util.List<com.uestc.entity.Major>
     * @Author Mardan
     * @Description 查询符合条件的专业信息
     * @Date 22:58 2019/4/18
     * @Param [collegeName]
     **/
    List<Major> selectMajorByCollegeName(@Param("collegeName") String collegeName);

    /**
     * @Author Mardan
     * @Description 由专业名称查询专业信息
     * @Date 9:15 2019/7/12
     * @Param [collegeName]
     * @return com.uestc.entity.Major
     **/
    Major selectMajorByName(@Param("majorName") String majorName);

    /**
     * @Author Mardan
     * @Description 由专业教师负责人查询专业信息
     * @Date 9:39 2019/7/12
     * @Param [teaNum]
     * @return com.uestc.entity.Major
     **/
    Major selectMajorByTeaNum(@Param("teaNum") String teaNum);

    /**
     * @Author Mardan
     * @Description 更新专业教师负责人学号
     * @Date 12:51 2019/6/30
     * @Param [teaOriNum, teaNum]
     * @return void
     **/
    void updateMajorTeaNum(@Param("teaOriNum") String teaOriNum, @Param("teaNum") String teaNum);

    /**
     * @Author Mardan
     * @Description 查询所有符合条件的专业信息
     * @Date 16:39 2019/7/8
     * @Param [majorSearch]
     * @return java.util.List<com.uestc.dto.major.MajorWithCollegeDto>
     **/
    List<MajorWithCollegeDto> selectAllMajorInfo(MajorSearchDto majorSearch);

    /**
     * @Author Mardan
     * @Description 查询学生用户名对应的专业及其附带信息
     * @Date 17:33 2019/7/8
     * @Param [stuNum]
     * @return com.uestc.dto.major.MajorWithCollegeDto
     **/
    MajorWithCollegeDto selectStuMajorOwnInfoByNum(@Param("stuNum") String stuNum);

    /**
     * @Author Mardan
     * @Description 查询教师用户名对应的专业及其附带信息
     * @Date 17:33 2019/7/8
     * @Param [teaNum]
     * @return com.uestc.dto.major.MajorWithCollegeDto
     **/
    MajorWithCollegeDto selectTeaMajorOwnInfoByNum(@Param("teaNum") String teaNum);

    /**
     * @return void
     * @Author Mardan
     * @Description 修改专业信息
     * @Date 12:33 2019/5/2
     * @Param [majorOriId, majorWCD]
     **/
    void updateMajorInfo(@Param("majorOriId") String majorOriId, @Param("majorWC") MajorWithCollegeDto majorWC);

    /**
     * @Author Mardan
     * @Description 向专业表插入一个专业
     * @Date 8:41 2019/7/14
     * @Param [majorWC]
     * @return void
     **/
    void insertMajor(MajorWithCollegeDto majorWC);

    /**
     * @Author Mardan
     * @Description
     * @Date 8:57 2019/7/14
     * @Param [majorName]
     * @return void
     **/
    void deleteOneMajor(@Param("majorName") String majorName);
}
