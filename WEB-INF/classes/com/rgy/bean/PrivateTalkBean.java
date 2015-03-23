package com.rgy.bean;

public class PrivateTalkBean {
	String role;
	String message;
	String date;

	public PrivateTalkBean(){}

	public void setRole(String role){
		this.role=role;
	}

	public void setMessage(String message){
		this.message=message;
	}

	public void setDate(String date){
		this.date=date;
	}

	//////////////////////////////////////////

	public String getRole(){
		return role;
	}

	public String getMessage(){
		return message;
	}

	public String getDate(){
		return date;
	}

}