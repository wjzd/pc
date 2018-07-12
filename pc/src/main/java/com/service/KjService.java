package com.service;

import com.pojo.Kjhm;
import com.pojo.UserInfo;
import com.pojo.Xiazhu;

import java.util.List;

public interface KjService {

    //查询未开奖集合
    List<com.pojo.Xiazhu> xzlist(Xiazhu xiazhu);
    //新增开奖号码
    int insertnum(Kjhm kjhm);

    //猜对号码增加用户的积分
    int addmoney(UserInfo userInfo);

    //更改下注表的状态
    int updatetype(Xiazhu xiazhu);

}
