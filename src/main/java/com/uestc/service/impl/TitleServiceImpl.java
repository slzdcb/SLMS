package com.uestc.service.impl;

import com.uestc.entity.Title;
import com.uestc.service.TitleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author Mardan
 * @ClassName TitleServiceImpl
 * @Description 教师职称业务实现
 * @Date 2019/6/14 12:44
 * @Version 1.0
 **/
@Service
@Transactional
public class TitleServiceImpl extends BaseServiceImpl implements TitleService {
    @Override
    public List<Title> selectAllTitle() {
        return titleMapper.selectAllTitle();
    }
}
