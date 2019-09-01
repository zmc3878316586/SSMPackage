package com.qst.controller;

import com.qst.domain.ResultInfo;
import com.qst.domain.Admin;
import com.qst.domain.User;
import com.qst.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final AdminService ad;

    @Autowired
    public AdminController(AdminService ad) {
        this.ad = ad;
    }

    @RequestMapping("/loginHandle")
    @ResponseBody
    public ResultInfo userLogin(String username, String password, HttpServletRequest request) {
        ResultInfo info = new ResultInfo();
        Admin admin = ad.login(username, password);
        if (admin == null) {
            info.setMessage("用户名或密码错误");
        } else {
            // 用户名和密码正确，登录成功
            info.setFlag(true);
            // 将用户添加到 session 中
            request.getSession().setAttribute("admin", admin);
        }
        return info;
    }

    @RequestMapping("/addUser")
    @ResponseBody
    public ResultInfo userAdd(User user) {
        ResultInfo info = new ResultInfo();
        if(ad.saveUser(user)){
            info.setFlag(true);
        } else {
            info.setMessage("添加失败");
        }
        return info;
    }

    @RequestMapping("delUser")
    public void userDel(Integer em_id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        ad.delUser(em_id);
        response.sendRedirect(request.getContextPath() + "/admin/queryCourier");
    }
}
