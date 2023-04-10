package com.hiltonhead.Model;

public class Price {

    private int priceID;
    private String season;
    private int daily;
    private int weekly;
    private int twoweeks;

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

    public int getTwoweeks() {
        return twoweeks;
    }

    public Price(int priceID, String season, int daily, int weekly, int twoweeks) {
        this.priceID = priceID;
        this.season = season;
        this.daily = daily;
        this.weekly = weekly;
        this.twoweeks = twoweeks;
    }
}
