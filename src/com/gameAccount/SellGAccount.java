package com.gameAccount;

public class SellGAccount {
	int id;
	String cName;
	String gDetail;
	String number;
	String level;
	String descreption;
	String date;
	String gameName;
	String flatform;
	String price;
	String filePath;

	
	public SellGAccount(int id, String cName, String gDetail, String number, String level, String descreption,
			String date, String gameName, String flatform, String price, String filePath) {
		super();
		this.id = id;
		this.cName = cName;
		this.gDetail = gDetail;
		this.number = number;
		this.level = level;
		this.descreption = descreption;
		this.date = date;
		this.gameName = gameName;
		this.flatform = flatform;
		this.price = price;
		this.filePath = filePath;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getgDetail() {
		return gDetail;
	}
	public void setgDetail(String gDetail) {
		this.gDetail = gDetail;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getDescreption() {
		return descreption;
	}
	public void setDescreption(String descreption) {
		this.descreption = descreption;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getFlatform() {
		return flatform;
	}
	public void setFlatform(String flatform) {
		this.flatform = flatform;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	

}
