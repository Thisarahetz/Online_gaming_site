package com.gameAccount;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BuyDBUtil {
	
	
	public static List<SellGAccount> buyAcc(int id){
		ArrayList<SellGAccount> cus=new ArrayList<>();
		
	     try {
	    	 Connection con=DBConnection.DBConnect();
	    	 
		Statement stmt=con.createStatement();
		
		String sql = "select * from gaccount where Gid='"+id+"' ";
		ResultSet rs = stmt.executeQuery(sql);
		
		
		
		if(rs.next()) {
			int id2 = rs.getInt(1);;
			String cName = rs.getNString(2);
			String gDetail = rs.getNString(3);
			String number = rs.getNString(4);
			String level  = rs.getNString(5);
			String descreption  = rs.getNString(6);
			String date  = rs.getNString(7);
			String gameName  = rs.getNString(8);
			String flatform  = rs.getNString(9);
			String price  = rs.getNString(10);

			
			
			SellGAccount cos=new SellGAccount(id2, cName, gDetail, number, level, descreption, date, gameName, flatform, price);
			cus.add(cos);
		}else {
			System.out.println("Invalid");
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		
	}
			
		
		
		return cus;
		
	}

}
