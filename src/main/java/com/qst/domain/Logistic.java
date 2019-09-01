package com.qst.domain;

public class Logistic {

    private Integer log_id;
    private String exp_id;
    private String place;
    private String ar_time;

    public Integer getLog_id() {
        return log_id;
    }

    public void setLog_id(Integer log_id) {
        this.log_id = log_id;
    }

    public String getExp_id() {
        return exp_id;
    }

    public void setExp_id(String exp_id) {
        this.exp_id = exp_id;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getAr_time() {
        return ar_time;
    }

    public void setAr_time(String ar_time) {
        this.ar_time = ar_time;
    }

    @Override
    public String toString() {
        return "LogisticDao{" +
                "log_id=" + log_id +
                ", exp_id='" + exp_id + '\'' +
                ", place='" + place + '\'' +
                ", ar_time='" + ar_time + '\'' +
                '}';
    }
}
