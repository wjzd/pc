package com.controller;

import com.pojo.LoginUser;
import com.service.ForgetService;
import com.utils.EmailUtil;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/forgetController")
@ResponseBody
public class Forget {

    @Resource
    private ForgetService forgetService;


    /**
     * 获取判断邮箱是否存在
     */
    @RequestMapping("getcode")
    public void forgetPasswd(String code, String email, HttpServletResponse resp){
        //判断邮箱是否存在

        System.out.println("11111111111111");
        //调用邮箱接口
        boolean femail=false;
        try {
            femail=EmailUtil.send(email,"您此次的验证码是："+code);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        int num=0;
        //判断邮件是否发送成功
        if(femail){
            num=1;
        }else{
            num=0;
        }

        JSONObject json=new JSONObject();
        json.put("num",num);

        PrintWriter out= null;
        try {
            out = resp.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.print(json);
        out.flush();
        out.close();

    }

    /**
     * 忘记密码
     * @param passwd
     */
    @RequestMapping("alertpd")
    public void alertpd(String passwd,String email,HttpServletResponse resp){

        int num=0;
        if(forgetService.updatepd(passwd,email)==1){
            num=1;
        }else{
            num=0;
        }


        JSONObject json=new JSONObject();
        json.put("num",num);

        PrintWriter out= null;
        try {
            out = resp.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.print(json);
        out.flush();
        out.close();

    }

    /**
     * 忘记账号
     */
    @RequestMapping("forgetA")
    public String forgetaccount(String email, Model model){

        System.out.println("忘记账号");
        LoginUser user1=forgetService.forgetA(email);

        if(user1==null){
            System.out.println("邮箱不存在");
            model.addAttribute("hite","邮箱不存在");
            return "forgetAccount.jsp";
        }else{

            boolean femail=false;
            try {
                femail=EmailUtil.send(email,"您的账号是："+user1.getUsername());
            } catch (MessagingException e) {
                e.printStackTrace();
            }
            //判断邮件是否发送成功
            if(femail){
                model.addAttribute("hite","请注意查收邮件");
                return "login.jsp";
            }else{
                model.addAttribute("hite","邮件发送失败");
                return "forgetAccount.jsp";
            }

        }

    }

    public int test(){
        int num=1;
        return num;
    }
}
