package com.controller;

import com.pojo.Kjhm;
import com.pojo.LoginUser;
import com.pojo.UserInfo;
import com.pojo.Xiazhu;
import com.service.LoginService;
import com.utils.Code;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/loginController")
public class Login {

    @Resource
    private LoginService loginService;
    /**
     * 用户登录
     * @param loginUser 用户对象

     */
    @RequestMapping("login")
    public String login(LoginUser loginUser, HttpSession session, Model model){

        System.out.println("用户名："+loginUser.getUsername());
        //得到当前上网ip
        String iplocation= Code.ipLocation();

        LoginUser loginUser1=loginService.login(loginUser);

       if(loginUser1!=null){
           UserInfo userInfo=loginService.userinfo(loginUser1.getUserid());
           userInfo.setIplocation(iplocation);
           session.setAttribute("loginUser",loginUser1);
           session.setAttribute("userInfo",userInfo);

           //下注号码集合
           model.addAttribute("nlist",loginService.selectNum());

           List<Xiazhu> wlist=loginService.selectW(loginUser1.getUserid());
           for(Xiazhu xiazhu:wlist){
               int money=xiazhu.getMoney();
               double peilv=xiazhu.getOdds();
               xiazhu.setKeying(money*peilv);
               String times=xiazhu.getXztime()+"";
               char[] ch= times.toCharArray();
               String ss="";
               for(int i=0;i<ch.length;i++){
                   ss=ss+ch[i];
                   if(i==3){
                       ss=ss+"-";
                   }else if(i==5){
                       ss=ss+"-";
                   }

               }

               xiazhu.setNewtime(ss);
           }
           //未开奖集合
           model.addAttribute("wlist",wlist);
           Xiazhu xiazhu1=new Xiazhu();
           xiazhu1.setUserid(loginUser1.getUserid());
           Date day=new Date();
           SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
           String rtime=df.format(day);

          int rtime1=Integer.parseInt(rtime.replaceAll("-",""));
           System.out.println("时间："+rtime1);
           xiazhu1.setXztime(rtime1);

           //已开奖集合
           List<Xiazhu> ylist=loginService.selectY(xiazhu1);
           for(Xiazhu xiazhu2:ylist){
               int money=xiazhu2.getMoney();
               double peilv=xiazhu2.getOdds();
               xiazhu2.setKeying(money*peilv);
//               System.out.println("可赢金额："+xiazhu2.getKeying());
               String times=xiazhu2.getXztime()+"";
               char[] ch= times.toCharArray();
               String ss="";
               for(int i=0;i<ch.length;i++){
                   ss=ss+ch[i];
                   if(i==3){
                       ss=ss+"-";
                   }else if(i==5){
                       ss=ss+"-";
                   }


               }
//               System.out.println("时间："+ss);
               xiazhu2.setNewtime(ss);
           }

           model.addAttribute("ylist",ylist);

           List<Kjhm> klist=loginService.seletK();
            for(Kjhm kjhm:klist){
                String[] nums=kjhm.getKjnum().split(",");
                kjhm.setOnenum(nums[0]);
                kjhm.setTwonum(nums[1]);
                kjhm.setThreenum(nums[2]);
            }
           model.addAttribute("klist",klist);

           return "/home.jsp";
       }else{
           return "/login.jsp";
       }


    }


}
