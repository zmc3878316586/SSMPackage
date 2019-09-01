package com.qst.controller;

import com.qst.domain.Logistic;
import com.qst.domain.ResultInfo;
import com.qst.domain.User;
import com.qst.domain.Package;
import com.qst.service.PackageService;
import com.qst.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 快递员控制器
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService us;
    private final PackageService ps;

    @Autowired
    public UserController(UserService us, PackageService ps) {
        this.us = us;
        this.ps = ps;
    }


    @RequestMapping("/loginHandle")
    @ResponseBody
    public ResultInfo userLogin(String username, String password, HttpServletRequest request) {
        ResultInfo info = new ResultInfo();
        User user = us.login(username, password);
        if (user == null) {
            info.setMessage("用户名或密码错误");
        } else {
            // 用户名和密码正确，登录成功
            info.setFlag(true);
            // 将用户添加到 session 中
            request.getSession().setAttribute("user", user);
        }

        return info;
    }

    @RequestMapping("/addPkgHandle")
    @ResponseBody
    public ResultInfo addPkgHandle(Package pkg) {
        System.out.println(pkg);
        ResultInfo info = new ResultInfo();
        if (ps.savePkg(pkg))
            info.setFlag(true);
        else
            info.setMessage("添加失败");

        return info;
    }

    @RequestMapping("/addLgt")
    @ResponseBody
    public ResultInfo addLgt(String exp_id, String desc) {
        ResultInfo info = new ResultInfo();
        Logistic logistic = new Logistic();
        logistic.setAr_time(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        logistic.setExp_id(exp_id);
        logistic.setPlace(desc);
        if(ps.saveLogistic(logistic))
            info.setFlag(true);
        else
            info.setMessage("添加失败");

        return info;
    }


}
