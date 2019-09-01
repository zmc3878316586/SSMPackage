package com.qst.dao;

import com.qst.domain.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminDao {
    Admin findAdminByUnAndPs(@Param("no") String username,
                             @Param("pw") String password);
}
