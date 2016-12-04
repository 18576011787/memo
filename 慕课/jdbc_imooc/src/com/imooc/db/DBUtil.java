package com.imooc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.spi.DirStateFactory.Result;

public class DBUtil {

	private static final String URL="jdbc:mysql://127.0.0.1:3306/imooc";
	private static final String USER="root";
	private static final String PASSWORD="lxy";
	
	public static void main(String[] args) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select user_name,age,birthday from imooc_goddess");
		
		while(rs.next())
			System.out.println(rs.getString("user_name")+","+rs.getInt("age")+","+rs.getDate("birthday")); 
		
		
	}
}
