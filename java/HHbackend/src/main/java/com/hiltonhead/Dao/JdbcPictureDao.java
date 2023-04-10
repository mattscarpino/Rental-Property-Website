package com.hiltonhead.Dao;

import com.hiltonhead.Model.Picture;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcPictureDao implements PictureDao{

    private JdbcTemplate jdbcTemplate;

    public JdbcPictureDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Picture> getPictures() {
        String sql = "SELECT pic_id, pic_url FROM pictures;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        List<Picture> pictures = new ArrayList<>();

        while(results.next()){
            Picture picture = new Picture(results.getInt("pic_id"), results.getString("pic_url"));
            pictures.add(picture);
        }
        return pictures;
    }
}
