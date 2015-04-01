package com.rgy.bean;

public class VisitorBean {
	String name;
	String email;
	String message;
	String date;

	public VisitorBean(){}

	public void setName(String name){
		this.name=name;
	}

	public void setEmail(String email){
		this.email=email;
	}

	public void setMessage(String message){
		this.message=message;
	}

	public void setDate(String date){
		this.date=date;
	}

	//////////////////////////////////////////

	public String getName(){
		return name;
	}

	public String getEmail(){
		return email;
	}

	public String getMessage(){
		return message;
	}

	public String getDate(){
		return date;
	}

}