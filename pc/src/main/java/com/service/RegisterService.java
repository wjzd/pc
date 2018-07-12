package com.service;

import com.pojo.AdminCode;
import com.pojo.LoginUser;
import com.pojo.UserInfo;

public interface RegisterService {

    /**
     * 查询用户名是否为空
     * @param username
     * @return
     */
    LoginUser selectName(String username);

    /**
     * 查询邀请码是否存在并且类型是什么
     * @param code
     * @return
     */
    AdminCode selectadminCode(String code);

    /**
     * 查询邀请码的类型
     * @param code
     * @return
     */
    LoginUser selectCode(String code);

    /**
     * 新增登录表的信息
     * @param loginUser
     * @return
     */
    int registerLogin(LoginUser loginUser);

    /**
     * 查询新增用户的id
     * @param username
     * @return
     */
    int selectid(String username);
    /**
     * 新增用户信息表的数据
     * @param userInfo
     * @return
     */
    int registerUser(UserInfo userInfo);

    /**
     * 用户使用后删除会员邀请码
     * @param code
     * @return
     */
    int delete(String code);

    /**
     * 修改用户邀请码的使用次数
     * @param code
     * @return
     */
    int update(String code);
}
