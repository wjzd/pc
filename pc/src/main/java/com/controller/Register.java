package com.controller;

import com.pojo.LoginUser;
import com.pojo.UserInfo;
import com.service.RegisterService;
import com.utils.Code;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/registerController")
public class Register {

    @Resource
    private RegisterService registerService;
    @RequestMapping("register")
    public String register(LoginUser loginUser, String code, HttpSession session, Model model){

        String iplocation= Code.ipLocation();

        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String rtime=df.format(day);

        String codenum=Integer.toString((int)((Math.random()*9+1)*100000));
        if(registerService.selectCode(codenum)==null){
            loginUser.setInvitationcode(codenum);
        }else{
            codenum=Integer.toString((int)((Math.random()*9+1)*100000));
            loginUser.setInvitationcode(codenum);
        }

        loginUser.setCodenum(20);
        UserInfo userInfo=new UserInfo();

        //判断输入的用户名是否已经存在
        if(registerService.selectName(loginUser.getUsername())==null){

            System.out.println("用户名："+loginUser.getUsername());
            userInfo.setIplocation(iplocation);
            userInfo.setRegistertime(rtime);

            userInfo.setHeadurl("img/u=982435258,2286603004&fm=27&gp=0.jpg");

            if(registerService.selectadminCode(code)!=null){
                //是会员邀请码
                userInfo.setUsertype(0);
                userInfo.setUserprevid(1);

                int num1=registerService.registerLogin(loginUser);
                userInfo.setUserid(registerService.selectid(loginUser.getUsername()));
                int num2=registerService.registerUser(userInfo);

                registerService.delete(code);

                session.setAttribute("loginUser",loginUser);
                session.setAttribute("userInfo",userInfo);

                return "/login.jsp";

            }else if(registerService.selectCode(code)!=null){
                //是普通用户邀请码
                userInfo.setUserprevid(registerService.selectCode(code).getUserid());
                userInfo.setUsertype(1);

                int num1=registerService.registerLogin(loginUser);
                userInfo.setUserid(registerService.selectid(loginUser.getUsername()));
                int num2=registerService.registerUser(userInfo);
                registerService.update(code);

                session.setAttribute("loginUser",loginUser);
                session.setAttribute("userInfo",userInfo);

                return "/login.jsp";

            }else{
                model.addAttribute("hite","邀请码不存在");
                System.out.println("邀请码不存在");
                return "/register.jsp";

            }

        }else{
           model.addAttribute("hite","用户名已经存在");
            System.out.println("用户名已经存在");
            return "/register.jsp";

        }

    }

}
