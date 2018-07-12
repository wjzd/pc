package com.service;

import com.pojo.LoginUser;
import com.pojo.UserInfo;

public interface ForgetService {
    /**
     * 忘记账号用邮箱找回
     * @param email
     * @return
     */
    LoginUser forgetA(String email);

    /**
     * 修改密码
     * @param passwd
     * @param email
     * @return
     */
    int updatepd(String passwd,String email);
}
