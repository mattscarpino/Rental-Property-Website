package com.hiltonhead.Model;

public class Picture {

    private int picID;
    private String picURL;

    public int getPicID() {
        return picID;
    }

    public String getPicURL() {
        return picURL;
    }

    public Picture(int picID, String picURL) {
        this.picID = picID;
        this.picURL = picURL;
    }
}
