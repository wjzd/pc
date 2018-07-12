package com.serviceImpl;

import com.dao.*;
import com.pojo.*;
import com.pojo.Number;
import com.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Resource
    private LoginUserMapper loginUserMapper;
    @Resource
    private UserInfoMapper userInfoMapper;
    @Resource
    private NumberMapper numberMapper;
    @Resource
    private XiazhuMapper xiazhuMapper;
    @Resource
    private KjhmMapper kjhmMapper;

    @Override
    public LoginUser login(LoginUser loginUser) {

        return loginUserMapper.login(loginUser);
    }

    @Override
    public UserInfo userinfo(int userid) {
        return userInfoMapper.userinfo(userid);
    }

    /**
     * 查询号码
     * @return
     */
    @Override
    public List<Number> selectNum() {
        return numberMapper.selectNum();
    }

    /**
     * 查询未结算注单
     * @param id
     * @return
     */
    @Override
    public List<Xiazhu> selectW(int id) {
        return xiazhuMapper.selectW(id);
    }

    /**
     * 查看今日已结算注单

     * @return
     */
    @Override
    public List<Xiazhu> selectY(Xiazhu xiazhu) {
        return xiazhuMapper.selectY(xiazhu);
    }

    /**
     * 查询历史开奖号码
     * @return
     */
    @Override
    public List<Kjhm> seletK() {
        return kjhmMapper.selectK();
    }

}
