package com.qst.dao;

import com.qst.domain.Logistic;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogisticDao {

    /**
     * 根据快递 id 查询其所有物流信息
     * @param exp_id  快递 id
     * @return  物流信息集合
     */
    List<Logistic> findLogisticsByExpId(String exp_id);

    /**
     * 添加物流信息
     * @param logistic 物流实体类
     */
    void addLogistic(Logistic logistic);

    /**
     * 当前节点
     * @param exp_id 快递 id
     * @return 当前地址
     */
    String findNowLd(String exp_id);
}
