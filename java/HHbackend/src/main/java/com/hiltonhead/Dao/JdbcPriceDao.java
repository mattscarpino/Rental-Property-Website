package com.hiltonhead.Dao;

import com.hiltonhead.Model.Price;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcPriceDao implements PriceDao{

    private JdbcTemplate jdbcTemplate;

    public JdbcPriceDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Price> getPrices() {
        List<Price> prices = new ArrayList<>();

        String sql = "SELECT prices_id, season, daily, weekly, two_weeks, three_weeks, four_weeks FROM prices;";

        SqlRowSet sqlRowSet = jdbcTemplate.queryForRowSet(sql);

        while(sqlRowSet.next()){
            Price price = new Price(sqlRowSet.getInt("prices_id"), sqlRowSet.getString("season"),
                    sqlRowSet.getInt("daily"), sqlRowSet.getInt("weekly"),
                    sqlRowSet.getInt("two_weeks"),sqlRowSet.getInt("three_weeks"),
                    sqlRowSet.getInt("four_weeks"));
            prices.add(price);
        }

        return prices;

    }
}
