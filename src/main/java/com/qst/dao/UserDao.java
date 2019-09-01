package com.qst.dao;

import com.qst.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    //@Select("select * from `user` where username = #{arg0} and passwd = #{arg1};")
    User findUserByUnAndPs(@Param("no") String username, @Param("pw") String password);

    List<User> findUser(@Param("name") String name, @Param("userNo") String userNo);

    void addUser(User user);

    List<User> findAllUser();

    void delUser(Integer em_id);

    User findUserById(Integer em_id);
}
