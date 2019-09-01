package com.qst.service;

import com.qst.domain.Logistic;
import com.qst.domain.Package;
import com.qst.domain.PackageVo;

import java.util.List;

public interface PackageService {

    boolean savePkg(Package pkg);

    boolean saveLogistic(Logistic logistic);

    List<PackageVo> findPkgs(String status, String id);

    List<PackageVo> findAllPkgs();

    List<Logistic> findLogisticsByExpId(String exp_id);

}
