package com.phone_shop.model;

import java.util.Date;

public class Commodity {
    private int com_id;
    private int type_id;
    private String com_name;
    private float com_price;
    private String com_url;
    private int com_inven;
    private int com_sell;
    private String com_intro;
    private Date com_ftime;

    public int getCom_id() {
        return com_id;
    }

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getCom_name() {
        return com_name;
    }

    public void setCom_name(String com_name) {
        this.com_name = com_name;
    }

    public float getCom_price() {
        return com_price;
    }

    public void setCom_price(float com_price) {
        this.com_price = com_price;
    }

    public String getCom_url() {
        return com_url;
    }

    public void setCom_url(String com_url) {
        this.com_url = com_url;
    }

    public int getCom_inven() {
        return com_inven;
    }

    public void setCom_inven(int com_inven) {
        this.com_inven = com_inven;
    }

    public int getCom_sell() {
        return this.com_sell;
    }

    public void setCom_sell(int com_sell) {
        this.com_sell = com_sell;
    }

    public String getCom_intro() {
        return com_intro;
    }

    public void setCom_intro(String com_intro) {
        this.com_intro = com_intro;
    }

    public Date getCom_ftime() {
        return com_ftime;
    }

    public void setCom_ftime(Date com_ftime) {
        this.com_ftime = com_ftime;
    }
}
