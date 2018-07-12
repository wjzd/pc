package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/daoHang")
public class DaoHang {

    @RequestMapping("dhmethod")
    public String daohang(int type){

        System.out.println("999");
        System.out.println("****"+type);
        return "daohang.jsp";
    }
}
