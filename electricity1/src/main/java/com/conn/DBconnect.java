package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBconnect {
	private static Connection con=null;

	public static Connection getCon() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =DriverManager.getConnection("jdbc:mysql://localhost:3306/electricity1?useSSL=false","root","");
		  	


		} catch (Exception e) {
			e.printStackTrace();

		}


		return con;
	}

}
