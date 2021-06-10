package com.gameAccount;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	public static Connection DBConnect() throws Exception{
	 
     
    	Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gametune_db", "root", "123@thisara");
        System.out.println("Connection is successful !!!!!");
        return con;
    
	
	

	}
}
	

