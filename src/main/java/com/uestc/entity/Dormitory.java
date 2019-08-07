package com.uestc.entity;

import java.io.Serializable;

public class Dormitory implements Serializable {
    private static final long serialVersionUID = 5262671908813902079L;

    //宿舍id
    private String dorId;
    //宿舍床位数量
    private Integer dorFee;
    //宿舍满员状态
    private String dorFull;

    public String getDorId() {
        return dorId;
    }

    public void setDorId(String dorId) {
        this.dorId = dorId;
    }

    public Integer getDorFee() {
        return dorFee;
    }

    public void setDorFee(Integer dorFee) {
        this.dorFee = dorFee;
    }

    public String getDorFull() {
        return dorFull;
    }

    public void setDorFull(String dorFull) {
        this.dorFull = dorFull;
    }

    @Override
    public String toString() {
        return "Dormitory{" +
                "dorId='" + dorId+ '\'' +
                ", dorFee=" + dorFee +
                ", dorFull='" + dorFull + '\'' +
                '}';
    }
}
