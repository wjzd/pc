package com.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class Code {

    /**
     * 随机生成五位数邀请码
     * @return
     */
    public static String codenum() {

        int num= (int)((Math.random()*9+1)*10000);
       return Integer.toString(num);
    }

    /**
     * 随机生成四位数验证码
     */
    public static int yzm(){
        int num= (int)((Math.random()*9+1)*1000);

        return num;
    }

    /**
     * 得到用户当前上网的ip地址
     * @return
     */
    public static String ipLocation(){
        String ip=null;
        try {
            InetAddress myip= InetAddress.getLocalHost();
            ip=myip.getHostAddress();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return ip;
    }
}
