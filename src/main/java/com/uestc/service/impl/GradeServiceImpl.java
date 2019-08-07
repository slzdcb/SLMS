package com.uestc.service.impl;

import com.uestc.entity.Grade;
import com.uestc.service.GradeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author Mardan
 * @ClassName GradeServiceImpl
 * @Description 年级业务实现
 * @Date 2019/6/14 12:56
 * @Version 1.0
 **/
@Service
@Transactional
public class GradeServiceImpl extends BaseServiceImpl implements GradeService {
    @Override
    public List<Grade> selectAllGrade() {
        return gradeMapper.selectAllGrade();
    }
}
