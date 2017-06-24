package com.wy.study.controller;

import com.wy.study.entity.Area;
import com.wy.study.mapper.AreaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by wy_ms on 2017/06/24.
 */
@Controller
@RequestMapping("/area")
public class AreaController {

    @Autowired
    AreaMapper mapper;

    @RequestMapping("/{id}")
    public String findById(@PathVariable int id, Model model) {
        Area area = mapper.findById(id);
        model.addAttribute(area);
        return "area";
    }

    @RequestMapping("/all")
    public String findAll(Model model) {
        List<Area> areas = mapper.findAll();
        model.addAttribute("areas", areas);
        return "areas";
    }
}
