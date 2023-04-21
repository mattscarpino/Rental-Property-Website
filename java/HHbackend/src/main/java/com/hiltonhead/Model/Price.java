package com.hiltonhead.Model;

public class Price {

    private int priceID;
    private String season;
    private int daily;
    private int weekly;
    private int twoWeeks;
    private int threeWeeks;
    private int fourWeeks;

    public int getPriceID() {
        return priceID;
    }

    public String getSeason() {
        return season;
    }

    public int getDaily() {
        return daily;
    }

    public int getWeekly() {
        return weekly;
    }

    public int getThreeWeeks() {
        return threeWeeks;
    }

    public int getFourWeeks() {
        return fourWeeks;
    }

    public int getTwoWeeks() {
        return twoWeeks;
    }

    public Price(int priceID, String season, int daily, int weekly, int twoWeeks, int threeWeeks, int fourWeeks) {
        this.priceID = priceID;
        this.season = season;
        this.daily = daily;
        this.weekly = weekly;
        this.twoWeeks = twoWeeks;
        this.threeWeeks = threeWeeks;
        this.fourWeeks = fourWeeks;
    }
}
