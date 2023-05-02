package com.hiltonhead.Dao;

import com.hiltonhead.Model.Recommendation;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcRecommendationDao implements RecommendationDao{
    private JdbcTemplate jdbcTemplate;

    public JdbcRecommendationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Recommendation> getAllRecommendations() {

        String sql = "SELECT recommendations_id, type, name, description, pic_url " +
                "FROM recommendations;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);

        List<Recommendation> recommendations = new ArrayList<>();

        while(rowSet.next()){
            Recommendation recommendation = new Recommendation(rowSet.getInt("recommendations_id"),
                    rowSet.getString("type"), rowSet.getString("name"), rowSet.getString("description"),
                    rowSet.getString("pic_url"));
            recommendations.add(recommendation);
        }
        return recommendations;
    }
}
