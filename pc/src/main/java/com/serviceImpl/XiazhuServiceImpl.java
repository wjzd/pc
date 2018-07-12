package com.serviceImpl;

import com.dao.UserInfoMapper;
import com.dao.XiazhuMapper;
import com.pojo.UserInfo;
import com.pojo.Xiazhu;
import com.service.XiazhuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("xiazhuService")
public class XiazhuServiceImpl implements XiazhuService {

    @Resource
    private XiazhuMapper xiazhuMapper;
    @Resource
    private UserInfoMapper userInfoMapper;

    /**
     * 查询本期下注的用户
     * @param xiazhu
     * @return
     */
    @Override
    public int insertxz(Xiazhu xiazhu) {
        return xiazhuMapper.instertxz(xiazhu);
    }

    /**
     * 新增开奖号码
     * @param userInfo
     * @return
     */
    @Override
    public int updatemoney(UserInfo userInfo) {
        return userInfoMapper.updatemoney(userInfo);
    }

    @Override
    public int kcmoney(UserInfo userInfo) {
        return userInfoMapper.kcmoney(userInfo);
    }
}
