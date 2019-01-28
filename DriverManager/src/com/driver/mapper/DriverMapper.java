package com.driver.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.driver.bean.Driver;

public class DriverMapper implements RowMapper<Driver> {

	public Driver mapRow(ResultSet rs, int rowNum) throws SQLException {
		Driver driver = new Driver();
		driver.setId(rs.getInt(1));
		driver.setName(rs.getString(2));
		driver.setMile(rs.getInt(3));
		driver.setPost(rs.getString(4));
		driver.setCode(rs.getString(5));
		driver.setPrefecture(rs.getString(6));
		driver.setCity(rs.getString(7));
		driver.setTown(rs.getString(8));

		return driver;
	}
}
