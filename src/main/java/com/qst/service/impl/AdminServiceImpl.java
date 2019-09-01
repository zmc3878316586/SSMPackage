package com.qst.service.impl;

import com.qst.dao.AdminDao;
import com.qst.dao.UserDao;
import com.qst.domain.Admin;
import com.qst.domain.User;
import com.qst.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    private final AdminDao ad;
    private final UserDao ud;

    @Autowired
    public AdminServiceImpl(AdminDao ad, UserDao ud) {
        this.ad = ad;
        this.ud = ud;
    }


    @Override
    public Admin login(String username, String password) {
        return ad.findAdminByUnAndPs(username,password);
    }

    @Override
    public boolean saveUser(User user) {
        try {
            ud.addUser(user);
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public List<User> findUser(String name, String userNo) {
        return ud.findUser(name,userNo);
    }

    @Override
    public List<User> findAllUser() {
        return ud.findAllUser();
    }

    @Override
    public void delUser(Integer em_id) {
        ud.delUser(em_id);
    }

    @Override
    public User findUserById(Integer em_id) {
        return ud.findUserById(em_id);
    }
}
