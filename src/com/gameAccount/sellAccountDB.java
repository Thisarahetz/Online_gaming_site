package com.gameAccount;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class sellAccountDB {
	

public static boolean insertGAccount(String cName,String gDetail,String number,String level,String descreption,String date,String gameName,String flatform,String price,String filePath) {
		
		
		boolean Succes=false;
	
		try {
			Connection con=DBConnection.DBConnect();
	    	 Statement stmt=con.createStatement();
	    	 
	    	 String sql="insert into gaccount values (0,'"+cName+"','"+gDetail+"','"+number+"','"+level+"','"+ descreption+"','"+ date+"','"+ gameName+"','"+flatform+"','"+price+"','"+filePath+"')";
	    	 int intrs=stmt.executeUpdate(sql);
	    	 if(intrs>0) {
	    		 Succes=true;
	    	 }else {
	    		 Succes=false;
	    	 }
	    	 
	    	 
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return Succes;
		
	}

public List<SellGAccount> getGameDetails(int id){
	
	ArrayList<SellGAccount> gam=new ArrayList<SellGAccount>();
	
	try {
		Connection con=DBConnection.DBConnect();
		Statement stm=con.createStatement();
		
		String sql="Select * from gaccount where Gid='"+id+"'" ;
		ResultSet rs=stm.executeQuery(sql);
		
		while(rs.next()) {
			int idm=rs.getInt(1);
			String cName=rs.getString(2);
			String gDetail =rs.getString(3);
			String number =rs.getString(4);
			String level =rs.getString(5);
			String descreption =rs.getString(6);
			String date = rs.getString(7);
			String gameName =rs.getString(8);
			String flatform =rs.getString(9);
			String price =rs.getString(10);
			String filePath =rs.getString(11);
			
			SellGAccount gm=new SellGAccount(idm,cName, gDetail, number, level, descreption, date, gameName, flatform, price, filePath);
			gam.add(gm);
			
		}
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return gam;
	
}
public static List<SellGAccount> allgame(){
	
	ArrayList<SellGAccount> gam=new ArrayList<SellGAccount>();
	
	try {
		Connection con=DBConnection.DBConnect();
		Statement stm=con.createStatement();
		
		String sql="Select * from gaccount" ;
		ResultSet rs=stm.executeQuery(sql);
		
		while(rs.next()) {
			int idm=rs.getInt(1);
			String cName=rs.getString(2);
			String gDetail =rs.getString(3);
			String number =rs.getString(4);
			String level =rs.getString(5);
			String descreption =rs.getString(6);
			String date = rs.getString(7);
			String gameName =rs.getString(8);
			String flatform =rs.getString(9);
			String price =rs.getString(10);
			String filePath =rs.getString(11);
			
			
			SellGAccount gm=new SellGAccount(idm,cName, gDetail, number, level, descreption, date, gameName, flatform, price, filePath);
			gam.add(gm);
			System.out.println("successfull data get database");
				
		}
		
		
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return gam;
	
}
	
	

}
