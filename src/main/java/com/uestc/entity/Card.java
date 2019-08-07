package com.uestc.entity;

import java.io.Serializable;

public class Card implements Serializable {
    private static final long serialVersionUID = 5262671908818902069L;

    //一卡通序列号
    private String cardId;
    //一卡通余额
    private Integer cardBalance;
    //一卡通挂失状态
    private String cardStatus;

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public Integer getCardBalance() {
        return cardBalance;
    }

    public void setCardBalance(Integer cardBalance) {
        this.cardBalance = cardBalance;
    }

    public String getCardStatus() {
        return cardStatus;
    }

    public void setCardStatus(String cardStatus) {
        this.cardStatus = cardStatus;
    }

    @Override
    public String toString() {
        return "Card{" +
                "cardId='" + cardId+ '\'' +
                ", cardBalance=" + cardBalance +
                ", className='" + cardStatus + '\'' +
                '}';
    }
}
