package com.service;

import com.pojo.UserInfo;
import com.pojo.Xiazhu;

public interface XiazhuService {

    int insertxz(Xiazhu xiazhu);

    int updatemoney(UserInfo userInfo);

    //下注之后扣除用户积分
    int kcmoney(UserInfo userInfo);
}
