package com.qst.domain;

/**
 * 包裹实体类
 */
public class Package {

    private Integer pa_id;      // 包裹 id
    private String exp_id;      // 快递单号
    private String pa_type;     // 包裹类型
    private String send_name;
    private String send_tel;
    private String send_place;
    private String rec_name;
    private String rec_tel;
    private String rec_place;
    private String marks;       // 备注

    public Integer getPa_id() {
        return pa_id;
    }

    public void setPa_id(Integer pa_id) {
        this.pa_id = pa_id;
    }

    public String getExp_id() {
        return exp_id;
    }

    public void setExp_id(String exp_id) {
        this.exp_id = exp_id;
    }

    public String getPa_type() {
        return pa_type;
    }

    public void setPa_type(String pa_type) {
        this.pa_type = pa_type;
    }

    public String getSend_name() {
        return send_name;
    }

    public void setSend_name(String send_name) {
        this.send_name = send_name;
    }

    public String getSend_tel() {
        return send_tel;
    }

    public void setSend_tel(String send_tel) {
        this.send_tel = send_tel;
    }

    public String getSend_place() {
        return send_place;
    }

    public void setSend_place(String send_place) {
        this.send_place = send_place;
    }

    public String getRec_name() {
        return rec_name;
    }

    public void setRec_name(String rec_name) {
        this.rec_name = rec_name;
    }

    public String getRec_tel() {
        return rec_tel;
    }

    public void setRec_tel(String rec_tel) {
        this.rec_tel = rec_tel;
    }

    public String getRec_place() {
        return rec_place;
    }

    public void setRec_place(String rec_place) {
        this.rec_place = rec_place;
    }

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks;
    }

    @Override
    public String toString() {
        return "Package{" +
                "pa_id=" + pa_id +
                ", exp_id='" + exp_id + '\'' +
                ", pa_type='" + pa_type + '\'' +
                ", send_name='" + send_name + '\'' +
                ", send_tel='" + send_tel + '\'' +
                ", send_place='" + send_place + '\'' +
                ", rec_name='" + rec_name + '\'' +
                ", rec_tel='" + rec_tel + '\'' +
                ", rec_place='" + rec_place + '\'' +
                ", marks='" + marks + '\'' +
                '}';
    }
}
