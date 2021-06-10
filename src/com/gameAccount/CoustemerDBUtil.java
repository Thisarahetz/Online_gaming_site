package com.gameAccount;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CoustemerDBUtil {
	public static List<User> validateUser(int userId){
		
		
		
		 ArrayList<User> cus=new ArrayList<>();
		
		     try {
		    	 Connection con=DBConnection.DBConnect();
		    	 
			Statement stmt=con.createStatement();
			
			String sql = "select * from users where id='"+userId+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			
			
			if(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				String phone=rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				
				User cust=new User(id, name, phone, email, username, password);
				
				cus.add(cust);
			}else {
				System.out.println("Invalid data get deta base");
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			
			return cus;
		
		
	}
	public static boolean updatecoustomer(String id, String name, String phone, String email,  String password){
		boolean suc=false;
		try {
			    Connection con=DBConnection.DBConnect();
				Statement stmt=con.createStatement();
				String sql="update users set name='"+name+"',phone='"+phone+"',email='"+email+"',password='"+password+"'"+"where id='"+id+"'";
				
				int rs=stmt.executeUpdate(sql);
				
				if(rs>0) {
					suc=true;
				}else {
					suc=false;
				}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return suc;
		
	}
	
}

