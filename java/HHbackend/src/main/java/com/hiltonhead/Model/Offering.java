package com.hiltonhead.Model;

public class Offering {
    private String amenity;
    private String url;
    public Offering(String amenity, String url){
        this.amenity = amenity;
        this.url = url;
    }
    public String getAmenity() {
        return amenity;
    }

    public String getUrl() {
        return url;
    }



}
