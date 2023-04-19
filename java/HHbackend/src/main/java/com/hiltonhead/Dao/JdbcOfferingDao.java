package com.hiltonhead.Dao;

import com.hiltonhead.Model.Offering;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcOfferingDao implements OfferingDao{
    private JdbcTemplate jdbcTemplate;

    public JdbcOfferingDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    public List<Offering> getOfferings() {
        List<Offering> offerings = new ArrayList<>();

        String sql = "SELECT amenity, photo " +
                "FROM offerings;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);

        while(results.next()){
            Offering offering = new Offering(results.getString("amenity"), results.getString("photo"));
            offerings.add(offering);
        }
        return offerings;

    }
}
