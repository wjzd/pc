package com.controller;

import com.pojo.UserInfo;
import com.service.XiazhuService;
import com.sun.deploy.net.HttpResponse;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/xiazhuController")
public class Xiazhu {

    @Resource
    private XiazhuService xiazhuService;
    @RequestMapping("xiazhu")
    public void xiazhus(com.pojo.Xiazhu xiazhu, UserInfo userInfo, HttpServletResponse resp){

        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String rtime=df.format(day);

        int rtime1=Integer.parseInt(rtime.replaceAll("-",""));
        double money=xiazhu.getMoney()*0.01;
        xiazhu.setFanli(money);
        xiazhu.setXztime(rtime1);
        double fanli=xiazhu.getMoney()*0.01;
        userInfo.setReturnmoney(fanli);


        int num1=xiazhuService.insertxz(xiazhu);
        int num2=xiazhuService.updatemoney(userInfo);

        int num3=xiazhuService.kcmoney(userInfo);
        int sum=0;
        if(num1==1&&num2==1&&num3==1){
            sum=1;
        }else{
            sum=0;
        }

        JSONObject json=new JSONObject();
        json.put("sum", sum);

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
}
