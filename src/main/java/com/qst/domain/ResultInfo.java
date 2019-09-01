package com.qst.domain;

/**
 * 页面信息类
 */

public class ResultInfo {

    private String message;
    private boolean flag;

    public ResultInfo() {
        this(null, false);
    }

    public ResultInfo(String message, boolean flag) {
        this.message = message;
        this.flag = flag;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }
}
