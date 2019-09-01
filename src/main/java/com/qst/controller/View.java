package com.qst.controller;

import com.qst.domain.Logistic;
import com.qst.domain.PackageVo;
import com.qst.domain.User;
import com.qst.service.AdminService;
import com.qst.service.PackageService;
import com.qst.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 视图控制器
 */
@Controller
public class View {

    private final UserService us;
    private final PackageService ps;
    private final AdminService as;

    @Autowired
    public View(UserService us, PackageService ps, AdminService as) {
        this.us = us;
        this.ps = ps;
        this.as = as;
    }

    /**
     * 用户登录页面
     *
     * @return 页面视图
     */
    @RequestMapping("/user/login")
    public ModelAndView userLoginView() {
        return new ModelAndView("courier/login");
    }

    /**
     * 管理员登录页面
     *
     * @return 页面视图
     */
    @RequestMapping("/admin/login")
    public ModelAndView adminLoginView() {
        return new ModelAndView("admin/login");
    }

    @RequestMapping("/main")
    public ModelAndView main() {
        return new ModelAndView("main");
    }

    @RequestMapping("/top")
    public ModelAndView top(HttpSession session) {
        ModelAndView mv = new ModelAndView("top");
        // 从 session 中取出登录的用户
        User user = (User) session.getAttribute("user");
        if (user != null)
            mv.addObject("name", user.getEm_name());
        else {
            Object admin = session.getAttribute("admin");
            if (admin != null)
                mv.addObject("name", "管理员");
            else
                mv.addObject("name", "未登录");
        }
        return mv;
    }

    @RequestMapping("/left")
    public ModelAndView left() {
        return new ModelAndView("left");
    }

    @RequestMapping("/right")
    public ModelAndView right() {
        return new ModelAndView("right");
    }

    @RequestMapping("/user/addPkg")
    public ModelAndView addPkg() {
        return new ModelAndView("courier/add_package");
    }

    @RequestMapping("/user/pkgInfo")
    public ModelAndView pkgInfo(String exp_id) {
        ModelAndView mv = new ModelAndView("courier/package_info");
        List<Logistic> list = ps.findLogisticsByExpId(exp_id);
        mv.addObject("list", list);
        mv.addObject("expId", exp_id);

        return mv;
    }

    @RequestMapping("/user/queryPkg")
    public ModelAndView queryPkg() {
        ModelAndView mv = new ModelAndView("courier/query_package");
        List<PackageVo> pkgs = ps.findAllPkgs();
        mv.addObject("list", pkgs);
        return mv;
    }

    @RequestMapping("/user/queryPkgByPrmt")
    public ModelAndView queryPkgByPrmt(String status, String empNo) {
        ModelAndView mv = new ModelAndView("courier/query_package");
        List<PackageVo> pkgs = ps.findPkgs(status, empNo);
        mv.addObject("list", pkgs);
        return mv;
    }

    @RequestMapping("/user/myInfo")
    public ModelAndView myInfo(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        // 取出登录的用户
        User user = (User) session.getAttribute("user");
        mv.addObject("user", user);
        mv.setViewName("courier/my_info");
        return mv;
    }

    @RequestMapping("/user/userInfo")
    public ModelAndView userInfo() {
        return new ModelAndView("courier/user_info");
    }

    @RequestMapping("/user/pkgTrack")
    public ModelAndView pkgTrack(String exp_id) {
        ModelAndView mv = new ModelAndView();
        List<Logistic> lists = ps.findLogisticsByExpId(exp_id);
        mv.addObject("list", lists);
        mv.addObject("expId", exp_id);

        mv.setViewName("courier/package_info_track");
        return mv;
    }

    @RequestMapping("/admin/addCourier")
    public ModelAndView addCourier() {
        return new ModelAndView("admin/add_courier");
    }

    @RequestMapping("/admin/queryCourier")
    public ModelAndView queryCourier() {
        ModelAndView mv = new ModelAndView("admin/query_courier");
        List<User> list = as.findAllUser();
        mv.addObject("list", list);
        return mv;
    }

    @RequestMapping("/admin/queryCourierByPrmt")
    public ModelAndView queryCourierByPrmt(String name, String userNo) {
        System.out.println(name + ": " + userNo);
        ModelAndView mv = new ModelAndView("admin/query_courier");
        List<User> list = as.findUser(name, userNo);
        mv.addObject("list", list);
        return mv;
    }

    @RequestMapping("/admin/queryPkg")
    public ModelAndView admQueryPkg() {
        ModelAndView mv = new ModelAndView("admin/query_package");
        List<PackageVo> pkgs = ps.findAllPkgs();
        mv.addObject("list", pkgs);
        return mv;
    }

    @RequestMapping("/admin/queryPkgByPrmt")
    public ModelAndView admQueryPkgByPrmt(String status, String empNo) {
        ModelAndView mv = new ModelAndView("admin/query_package");
        List<PackageVo> pkgs = ps.findPkgs(status, empNo);
        mv.addObject("list", pkgs);
        return mv;
    }

    @RequestMapping("/admin/courierInfo")
    public ModelAndView courierInfo(Integer em_id) {
        ModelAndView mv = new ModelAndView("admin/courier_info");
        User user = as.findUserById(em_id);
        mv.addObject("user", user);
        return mv;
    }

    @RequestMapping("/admin/pkgInfo")
    public ModelAndView adminPkgInfo(String exp_id) {
        ModelAndView mv = new ModelAndView("admin/package_info");
        List<Logistic> list = ps.findLogisticsByExpId(exp_id);
        mv.addObject("list", list);
        mv.addObject("expId", exp_id);
        return mv;
    }

    @RequestMapping("/expressQuery")
    public ModelAndView expressQuery(String exp_id) {
        ModelAndView mv = new ModelAndView();
        List<Logistic> lists = ps.findLogisticsByExpId(exp_id);
        mv.addObject("list", lists);
        mv.addObject("expId", exp_id);

        mv.setViewName("user/express_query");
        return mv;
    }

    @RequestMapping("/error")
    public ModelAndView error() {
        return new ModelAndView("error");
    }

}
