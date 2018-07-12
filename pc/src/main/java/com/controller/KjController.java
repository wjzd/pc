package com.controller;

import com.pojo.Kjhm;
import com.pojo.UserInfo;
import com.pojo.Xiazhu;
import com.service.KjService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/kjController")
public class KjController {

    @Resource
    private KjService kjService;
    @RequestMapping("kjm")
    public void kjmethod(int kjqh,int num1,int num2,int num3,String location){
        Xiazhu xiazhu=new Xiazhu();//下注信息
        Kjhm kjhm=new Kjhm();//开奖号码
        xiazhu.setIssue(kjqh);
        xiazhu.setLocation(location);

        String num1s=String.valueOf(num1);
        String num2s=String.valueOf(num2);
        String num3s=String.valueOf(num3);

        int sum=num1+num2+num3;
        String kjnum=""+num1+","+num2+","+num3+"";

        kjhm.setKjqh(kjqh);
        kjhm.setKjnum(kjnum);

        kjService.insertnum(kjhm);
        List<Xiazhu> xlist=kjService.xzlist(xiazhu);
        System.out.println("集合大小："+xlist.size());

        for(Xiazhu xiazhu1:xlist){
            if(xiazhu1.getXznumber().equals(num1s)||xiazhu1.getXznumber().equals(num2s)||xiazhu1.getXznumber().equals(num3s)){
                UserInfo user=new UserInfo();
                user.setUserid(xiazhu1.getUserid());
                kjService.addmoney(user);
                kjService.updatetype(xiazhu1);
            }
        }





    }
}
