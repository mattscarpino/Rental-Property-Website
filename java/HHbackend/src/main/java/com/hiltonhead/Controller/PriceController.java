package com.hiltonhead.Controller;

import com.hiltonhead.Dao.OfferingDao;
import com.hiltonhead.Dao.PictureDao;
import com.hiltonhead.Dao.PriceDao;
import com.hiltonhead.Model.Offering;
import com.hiltonhead.Model.Picture;
import com.hiltonhead.Model.Price;
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

    public PriceController(PriceDao priceDao, PictureDao pictureDao, OfferingDao offeringDao) {
        this.priceDao = priceDao;
        this.pictureDao = pictureDao;
        this.offeringDao = offeringDao;
    }

    @GetMapping(path = "/prices")
    public List<Price> getPrices() {
        return priceDao.getPrices();
    }

    @GetMapping(path = "/pictures")
    public List<Picture> getPictures(){
        return pictureDao.getPictures();
    }

    @GetMapping(path = "/offerings")
    public List<Offering> getOfferings(){
        return offeringDao.getOfferings();
    }
}
