package com.serviceImpl;

import com.dao.AdminCodeMapper;
import com.dao.LoginUserMapper;
import com.dao.UserInfoMapper;
import com.pojo.AdminCode;
import com.pojo.LoginUser;
import com.pojo.UserInfo;
import com.service.RegisterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

    @Resource
    private LoginUserMapper loginUserMapper;

    @Resource
    private UserInfoMapper userInfoMapper;

    @Resource
    private AdminCodeMapper adminCodeMapper;
    @Override
    public LoginUser selectName(String username) {
        return loginUserMapper.selectName(username);
    }

    @Override
    public AdminCode selectadminCode(String code) {
        return adminCodeMapper.selectadminCode(code);
    }

    @Override
    public LoginUser selectCode(String code) {
        return loginUserMapper.selectCode(code);
    }

    @Override
    public int registerLogin(LoginUser loginUser) {
        return loginUserMapper.registerLogin(loginUser);
    }

    @Override
    public int selectid(String username) {
        return loginUserMapper.selectid(username);
    }

    //新增用户表信息
    @Override
    public int registerUser(UserInfo userInfo) {
        return userInfoMapper.registerUser(userInfo);
    }

    /**
     * 删除会员邀请码
     * @param code
     * @return
     */
    @Override
    public int delete(String code) {
        return adminCodeMapper.delete(code);
    }

    /**
     * 修改邀请码的使用次数
     * @param code
     * @return
     */
    @Override
    public int update(String code) {
        return loginUserMapper.update(code);
    }


}
