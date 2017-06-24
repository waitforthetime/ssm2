package com.wy.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by wy_ms on 2017/06/24.
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping("/hello")
    public String testJsp(Model model) {
        model.addAttribute("msg","hello world");
        return "test";
    }

    @RequestMapping("/jsp")
    public String testJsp2(Map<Object, Object> model) {
        model.put("msg","hello,world!");
        return "test";
    }
}
