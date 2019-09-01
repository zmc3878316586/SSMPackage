package com.qst.service.impl;

import com.qst.dao.UserDao;
import com.qst.domain.User;
import com.qst.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    public final UserDao ud;

    @Autowired
    public UserServiceImpl(UserDao ud) {
        this.ud = ud;
    }


    @Override
    public User login(String username, String password) {
        return ud.findUserByUnAndPs(username, password);
    }


}
