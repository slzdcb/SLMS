package com.uestc.dao;

import com.uestc.dto.classP.ClassSearchDto;
import com.uestc.dto.classP.ClassWithGradeMajorCollegeDto;
import com.uestc.entity.Class;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Mardan
 * @IntefaceName ClassMapper
 * @Description 班级业务持久层接口
 * @Date 2019/6/14 13:00
 * @Version 1.0
 **/
@Repository
public interface ClassMapper {
    /**
     * @return java.util.List<java.lang.Class>
     * @Author Mardan
     * @Description 接收majorName参数，查询该majorName下的所有班级
     * 若majorName为空，则返回class表中所有班级
     * @Date 22:33 2019/4/23
     * @Param [majorName]
     **/
    List<Class> selectClassByMajorName(@Param("majorName") String majorName);

    /**
     * @Author Mardan
     * @Description 根据班级名称查询班级信息
     * @Date 16:53 2019/7/7
     * @Param [className]
     * @return com.uestc.entity.Class
     **/
    Class selectClassByName(@Param("className") String className);

    /**
     * @Author Mardan
     * @Description 根据班长学号查询班级信息
     * @Date 17:01 2019/7/7
     * @Param [classStuName]
     * @return com.uestc.entity.Class
     **/
    Class selectClassByStuNum(@Param("classStuName") String classStuName);

    /**
     * @Author Mardan
     * @Description 根据班主任工号查询班级信息
     * @Date 17:08 2019/7/7
     * @Param [classTeaName]
     * @return com.uestc.entity.Class
     **/
    Class selectClassByTeaNum(@Param("classTeaName") String classTeaName);

    /**
     * @Author Mardan
     * @Description 更新班长学号
     * @Date 20:27 2019/6/23
     * @Param [stuOriNum, stuNum]
     * @return void
     **/
    void updateClassStuNum(@Param("stuOriNum") String stuOriNum, @Param("stuNum") String stuNum);

    /**
     * @Author Mardan
     * @Description 更新班主任工号
     * @Date 12:38 2019/6/30
     * @Param [teaOriNum, teaNum]
     * @return void
     **/
    void updateClassTeaNum(@Param("teaOriNum")String teaOriNum,@Param("teaNum") String teaNum);

    /**
     * @Author Mardan
     * @Description 根据输入classSearch的查询条件查询符合条件的所有班级信息
     * @Date 8:52 2019/7/7
     * @Param [classSearch]
     * @return java.util.List<com.uestc.dto.classP.ClassWithGradeMajorCollegeDto>
     **/
    List<ClassWithGradeMajorCollegeDto> selectAllClassInfo(ClassSearchDto classSearch);

    /**
     * @Author Mardan
     * @Description 查询学生用户名对应的班级及其附带信息
     * @Date 12:41 2019/7/7
     * @Param [stuNum]
     * @return com.uestc.dto.classP.ClassWithGradeMajorCollegeDto
     **/
    ClassWithGradeMajorCollegeDto selectStuClassOwnInfoByNum(@Param("stuNum") String stuNum);

    /**
     * @Author Mardan
     * @Description 查询教师用户名对应的班级及其附带信息
     * @Date 12:41 2019/7/7
     * @Param [teaNum]
     * @return com.uestc.dto.classP.ClassWithGradeMajorCollegeDto
     **/
    ClassWithGradeMajorCollegeDto selectTeaClassOwnInfoByNum(@Param("teaNum") String teaNum);

    /**
     * @Author Mardan
     * @Description 修改班级信息
     * @Date 17:36 2019/7/7
     * @Param [classOriId, classWGMC]
     * @return void
     **/
    void updateClassInfo(@Param("classOriId") String classOriId, @Param("classWGMC") ClassWithGradeMajorCollegeDto classWGMC);

    /**
     * @Author Mardan
     * @Description 向班级表插入一个班级
     * @Date 18:42 2019/7/7
     * @Param [classWGMC]
     * @return void
     **/
    void insertClass(ClassWithGradeMajorCollegeDto classWGMC);

    /**
     * @Author Mardan
     * @Description 删除一个班级，mysql级联删除，子表中记录也会删除
     * @Date 9:34 2019/7/8
     * @Param [className]
     * @return void
     **/
    void deleteOneClass(@Param("className") String className);
}
