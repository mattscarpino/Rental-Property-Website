package com.hiltonhead.Controller;

import com.hiltonhead.Dao.OfferingDao;
import com.hiltonhead.Dao.PictureDao;
import com.hiltonhead.Dao.PriceDao;
import com.hiltonhead.Dao.RecommendationDao;
import com.hiltonhead.Model.Offering;
import com.hiltonhead.Model.Picture;
import com.hiltonhead.Model.Price;
import com.hiltonhead.Model.Recommendation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/api")
public class PriceController {

    private PriceDao priceDao;
    private PictureDao pictureDao;
    private OfferingDao offeringDao;
    private RecommendationDao recommendationDao;

    public PriceController(PriceDao priceDao, PictureDao pictureDao, OfferingDao offeringDao, RecommendationDao recommendationDao) {
        this.priceDao = priceDao;
        this.pictureDao = pictureDao;
        this.offeringDao = offeringDao;
        this.recommendationDao = recommendationDao;
    }

    @GetMapping(path = "/price")
    public List<Price> getPrices() {
        return priceDao.getPrices();
    }

    @GetMapping(path = "/picture")
    public List<Picture> getPictures(){
        return pictureDao.getPictures();
    }

    @GetMapping(path = "/offering")
    public List<Offering> getOfferings(){
        return offeringDao.getOfferings();
    }

    @GetMapping(path = "/recommendation")
    public List<Recommendation> getRecommendations(){
        return recommendationDao.getAllRecommendations();
    }
}
