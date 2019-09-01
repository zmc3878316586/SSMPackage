package com.qst.service;

import com.qst.domain.Admin;
import com.qst.domain.User;

import java.util.List;

public interface AdminService {

    Admin login(String username, String password);

    boolean saveUser(User user);

    List<User> findUser(String name, String userNo);

    List<User> findAllUser();

    void delUser(Integer em_id);

    User findUserById(Integer em_id);
}
