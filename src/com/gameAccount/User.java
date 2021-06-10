package com.gameAccount;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class User {
	
	int id;
	String name;
	String phone;
	String email;
	String username;
	String password;
	boolean boostseller;
	boolean coach;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet res = null;
	
	
//	Constructor
	public User(int id, String name, String phone, String email, String username, String password) {
		
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	
//	Getters
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public boolean isBoostseller() {
		return boostseller;
	}

	public boolean isCoach() {
		return coach;
	}
	
	
//	Get Name Belongs to A Specific user ID
	public static String getName(int id) {
		
		String n = null;
		
		try {
			
			con = DBConnection.DBConnect();
			stmt = con.createStatement();
			String sql = "select name from users where id = "+id+";";
			
			res = stmt.executeQuery(sql);
			
			while(res.next()) {
				n = res.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}
	
	
	
//	User Validate
	public static int validateUser(String uname, String pwd) {
		
		int ret = -1;
		
		try {
			
			con = DBConnection.DBConnect();
			stmt = con.createStatement();
			String sql = "select id from users where username = '"+uname+"' and password = '"+pwd+"';";
			
			res = stmt.executeQuery(sql);
			
			while(res.next()) {
				ret = res.getInt(1);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}
	
}
