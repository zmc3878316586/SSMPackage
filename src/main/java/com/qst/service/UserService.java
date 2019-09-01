package com.qst.service;

import com.qst.domain.User;

public interface UserService {

    User login(String username, String password);

}
