package com.qst.service.impl;

import com.qst.dao.LogisticDao;
import com.qst.dao.PackageDao;
import com.qst.domain.Logistic;
import com.qst.domain.Package;
import com.qst.domain.PackageVo;
import com.qst.service.PackageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("packageService")
public class PackageServiceImpl implements PackageService {

    private final PackageDao pd;
    private final LogisticDao ld;

    @Autowired
    public PackageServiceImpl(PackageDao pd, LogisticDao ld) {
        this.pd = pd;
        this.ld = ld;
    }

    @Override
    public boolean savePkg(Package pkg) {
        try {
            pd.addPackage(pkg);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean saveLogistic(Logistic logistic) {
        if (logistic.getPlace().contains("签收")) {
            pd.setStatus(logistic.getExp_id(), "已签收");
        } else if (logistic.getPlace().contains("已到达") && logistic.getPlace().contains(pd.findPkg(logistic.getExp_id()).getRec_place())) {
            pd.setStatus(logistic.getExp_id(), "已到达");
        } else {
            pd.setStatus(logistic.getExp_id(), "运输中");
        }

        try {
            ld.addLogistic(logistic);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public List<PackageVo> findPkgs(String status, String id) {
        ArrayList<PackageVo> res = new ArrayList<>();
        List<Package> list = pd.findPkgs(status, id);
        for (Package pkg : list) {
            PackageVo temp = new PackageVo();
            temp.setPkg(pkg);
            temp.setNowPlace(ld.findNowLd(pkg.getExp_id()));
            res.add(temp);
        }
        return res;
    }

    @Override
    public List<PackageVo> findAllPkgs() {
        ArrayList<PackageVo> res = new ArrayList<>();
        List<Package> list = pd.findAllPkgs();
        for (Package pkg : list) {
            PackageVo temp = new PackageVo();
            temp.setPkg(pkg);
            temp.setNowPlace(ld.findNowLd(pkg.getExp_id()));
            res.add(temp);
        }
        return res;
    }

    @Override
    public List<Logistic> findLogisticsByExpId(String exp_id) {
        return ld.findLogisticsByExpId(exp_id);
    }
}
