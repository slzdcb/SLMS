package com.uestc.service;

import com.uestc.entity.Grade;

import java.util.List;

/**
 * @Author
 * @IntefaceName GradeService
 * @Description 年级业务接口
 * @Date 2019/7/14 12:52
 * @Version 1.0
 **/
public interface GradeService {
    /**
     * @Author
     * @Description 查询所有的年级信息
     * @Date 22:45 2019/6/18
     * @Param []
     * @return java.util.List<com.uestc.entity.Grade>
     **/
    List<Grade> selectAllGrade();
}
