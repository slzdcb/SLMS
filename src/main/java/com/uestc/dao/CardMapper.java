package com.uestc.dao;


import com.uestc.entity.Card;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @Author Mardan
 * @IntefaceName CardMapper
 * @Description 一卡通业务持久层接口
 * @Date 2019/7/14 13:00
 * @Version 1.0
 **/
@Repository
public interface CardMapper {

    /**
     * @Author Mardan
     * @Description 根据班级名称查询班级信息
     * @Date 16:53 2019/7/7
     * @Param [cardFee]
     * @return com.uestc.entity.Card
     **/
    Card selectClassByName(@Param("cardFee") String cardFee);
}
