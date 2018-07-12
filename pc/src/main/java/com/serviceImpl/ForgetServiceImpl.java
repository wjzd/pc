package com.serviceImpl;

import com.dao.LoginUserMapper;
import com.dao.UserInfoMapper;
import com.pojo.LoginUser;
import com.pojo.UserInfo;
import com.service.ForgetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("forgetService")
public class ForgetServiceImpl implements ForgetService {

    @Resource
    private LoginUserMapper loginUserMapper;
    @Override
    public LoginUser forgetA(String email) {
        return loginUserMapper.forgetA(email);
    }

    @Override
    public int updatepd(String passwd, String email) {
        return loginUserMapper.updatepd(passwd,email);
    }
}
