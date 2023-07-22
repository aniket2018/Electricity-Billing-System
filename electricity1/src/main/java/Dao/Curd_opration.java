package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import registration.registrationServlet;

public class Curd_opration {
	private Connection con;
	registrationServlet rs = new registrationServlet();

	public Curd_opration(Connection con) {
		super();
		this.con=con;
	}


	
	
}