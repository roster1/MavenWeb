package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Ven on 2017/07/12.
 */
@Controller
public class CommenCtrl {

//    @RequestMapping(name = "/{View}",method = RequestMethod.GET)
    @GetMapping("/{View}")
    public void getView(){}

    @GetMapping("/file/{View}")
    public void getFileView(){}
}
