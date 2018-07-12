package com.serviceImpl;

import com.dao.KjhmMapper;
import com.dao.UserInfoMapper;
import com.dao.XiazhuMapper;
import com.pojo.Kjhm;
import com.pojo.UserInfo;
import com.pojo.Xiazhu;
import com.service.KjService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("kjService")
public class KjServiceImpl implements KjService {

    @Resource
    private XiazhuMapper xiazhuMapper;
    @Resource
    private KjhmMapper kjhmMapper;

    @Resource
    private UserInfoMapper userInfoMapper;

    /**
     * 得到本期下注的集合
     * @param xiazhu
     * @return
     */
    @Override
    public List<com.pojo.Xiazhu> xzlist(Xiazhu xiazhu) {
        return xiazhuMapper.xzlist(xiazhu);
    }

    /**
     * 新增开奖号码
     * @param kjhm
     * @return
     */
    @Override
    public int insertnum(Kjhm kjhm) {
        return kjhmMapper.insertnum(kjhm);
    }

    /**
     * 猜对号码增加用户的积分
     * @param userInfo
     * @return
     */
    @Override
    public int addmoney(UserInfo userInfo) {
        return userInfoMapper.addmoney(userInfo);
    }

    @Override
    public int updatetype(Xiazhu xiazhu) {
        return xiazhuMapper.updatetype(xiazhu);
    }
}
