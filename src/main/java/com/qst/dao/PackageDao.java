package com.qst.dao;

import com.qst.domain.Package;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PackageDao {

    void addPackage(Package pkg);

    List<Package> findPkgs(@Param("status") String status, @Param("id") String id);

    List<Package> findAllPkgs();

    Package findPkg(String id);

    void setStatus(@Param("id") String exp_id, @Param("status") String status);
}
