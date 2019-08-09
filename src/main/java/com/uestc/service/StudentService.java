package com.uestc.service;

import com.github.pagehelper.PageInfo;
import com.uestc.dto.other.MyPage;
import com.uestc.dto.other.senior.StudentPercentBySex;
import com.uestc.dto.student.StudentSearchDto;
import com.uestc.dto.student.StudentWithGradeClassMajorCollegeDto;
import com.uestc.entity.Student;

import java.util.List;

/**
 * @Author
 * @IntefaceName StudentService
 * @Description 学生业务接口
 * @Date 2019/7/14 12:52
 * @Version 1.0
 **/
public interface StudentService {
    /**
     * @Author
     * @Description 返回学号对应的学生
     * @Date 10:06 2019/6/23
     * @Param [stuNum]
     * @return com.uestc.entity.Student
     **/
    Student selectStudentByNum(String stuNum);

    /**
     * @Author
     * @Description 返回符合条件的学生信息分页结果
     * @Date 15:14 2019/6/19
     * @Param [myPage, studentSearch]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.student.StudentWithGradeClassMajorCollegeDto>
     **/
    PageInfo<StudentWithGradeClassMajorCollegeDto> selectAllStudentInfo(MyPage myPage, StudentSearchDto studentSearch);

    /**
     * @Author
     * @Description 返回用户名对应的学生及其附带信息分页结果
     * @Date 23:19 2019/6/19
     * @Param [myPage, stuNum]
     * @return com.github.pagehelper.PageInfo<com.uestc.dto.student.StudentWithGradeClassMajorCollegeDto>
     **/
    PageInfo<StudentWithGradeClassMajorCollegeDto> selectStudentOwnInfoByNum(MyPage myPage, String stuNum);

    /**
     * @Author
     * @Description 修改学生信息
     * @Date 16:49 2019/6/23
     * @Param [stuOriNum, stuWGCMC]
     * @return void
     **/
    void updateStudentInfo(String stuOriNum, StudentWithGradeClassMajorCollegeDto stuWGCMC);

    /**
     * @Author
     * @Description 添加学生业务
     * @Date 21:19 2019/6/23
     * @Param [stuWGCMC]
     * @return void
     **/
    void insertStudent(StudentWithGradeClassMajorCollegeDto stuWGCMC);

    /**
     * @Author
     * @Description 删除一个学生业务
     * @Date 18:43 2019/6/24
     * @Param [stuNum]
     * @return void
     **/
    void deleteOneStudent(String stuNum);

    /**
     * @Author
     * @Description 批量删除学生业务
     * @Date 19:11 2019/6/24
     * @Param [stuNums]
     * @return void
     **/
    void deleteManyStudents(List<String> stuNums);

    /**
     * @Author
     * @Description 由学号返回相应学生信息
     * @Date 12:45 2019/7/7
     * @Param [stuNum]
     * @return com.uestc.dto.student.StudentWithGradeClassMajorCollegeDto
     **/
    StudentWithGradeClassMajorCollegeDto selectStudentInfoByNum(String stuNum);

}
