package com.controller;


import com.entity.AccountModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Ven on 2017/07/12.
 */

@Controller
public class AccountCtrl {

    @PostMapping("/login")
    public String login(AccountModel accountModel){
        System.out.println(accountModel.getAccountname());
        System.out.println(accountModel.getPassword());
        return "file/index";
    }


}
