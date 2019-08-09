package com.uestc.service.impl;

import com.uestc.dao.*;
import com.uestc.service.*;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Author
 * @ClassName BaseServiceImpl
 * @Description 基础业务类，用来继承
 * @Date 2019/7/5 9:16
 * @Version 1.0
 **/
public class BaseServiceImpl {
    @Autowired
    protected UserMapper userMapper;

    @Autowired
    protected StudentMapper studentMapper;

    @Autowired
    protected TeacherMapper teacherMapper;

    @Autowired
    protected ClassMapper classMapper;

    @Autowired
    protected MajorMapper majorMapper;

    @Autowired
    protected CollegeMapper collegeMapper;

    @Autowired
    protected GradeMapper gradeMapper;

    @Autowired
    protected TitleMapper titleMapper;
}
