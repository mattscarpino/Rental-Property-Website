package com.hiltonhead.Model;

public class Recommendation {
    private int recommendationId;
    private String type;
    private String name;
    private String description;
    private String picUrl;

    public Recommendation(int recommendationId, String type, String name, String description, String picUrl) {
        this.recommendationId = recommendationId;
        this.type = type;
        this.name = name;
        this.description = description;
        this.picUrl = picUrl;
    }

    public int getRecommendationId() {
        return recommendationId;
    }

    public String getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getPicUrl() {
        return picUrl;
    }
}
