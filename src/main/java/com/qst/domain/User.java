package com.qst.domain;

/**
 * 快递员实体类
 */
public class User {
    private Integer em_id;      // 快递员 id
    private String em_no;       // 快递员编号
    private String em_password; // 快递员密码
    private String em_name;     // 快递员姓名
    private Integer em_sex;     // 快递员性别
    private Integer em_age;     // 年龄
    private String em_tel;      // 电话号码
    private String em_home;     // 家庭住址
    private String em_place;    // 地址

    public Integer getEm_id() {
        return em_id;
    }

    public void setEm_id(Integer em_id) {
        this.em_id = em_id;
    }

    public String getEm_no() {
        return em_no;
    }

    public void setEm_no(String em_no) {
        this.em_no = em_no;
    }

    public String getEm_password() {
        return em_password;
    }

    public void setEm_password(String em_password) {
        this.em_password = em_password;
    }

    public String getEm_name() {
        return em_name;
    }

    public void setEm_name(String em_name) {
        this.em_name = em_name;
    }

    public Integer getEm_sex() {
        return em_sex;
    }

    public void setEm_sex(Integer em_sex) {
        this.em_sex = em_sex;
    }

    public Integer getEm_age() {
        return em_age;
    }

    public void setEm_age(Integer em_age) {
        this.em_age = em_age;
    }

    public String getEm_tel() {
        return em_tel;
    }

    public void setEm_tel(String em_tel) {
        this.em_tel = em_tel;
    }

    public String getEm_home() {
        return em_home;
    }

    public void setEm_home(String em_home) {
        this.em_home = em_home;
    }

    public String getEm_place() {
        return em_place;
    }

    public void setEm_place(String em_place) {
        this.em_place = em_place;
    }
}
