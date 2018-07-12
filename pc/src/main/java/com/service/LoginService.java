package com.service;

import com.pojo.*;
import com.pojo.Number;

import java.util.List;

public interface LoginService {

    LoginUser login(LoginUser loginUser);

    UserInfo userinfo(int userid);
    //查询号码以及赔率
    List<Number> selectNum();
    //查询未结算注单
    List<Xiazhu> selectW(int id);
    //查询今日已结算注单
    List<Xiazhu> selectY(Xiazhu xiazhu);
    //查询近期开奖号码20个
    List<Kjhm> seletK();
}
