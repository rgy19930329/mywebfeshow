package com.rgy.dao;

import java.sql.*;
import com.rgy.bean.VisitorBean;
import com.rgy.bean.PrivateTalkBean;

public class VisitorDao{

	Connection conn=null;
	PreparedStatement pmt=null;
	ResultSet rs=null;

	public VisitorDao(){
		/*访问jdbc.properties文件*/
		java.util.Properties prop=new java.util.Properties();
		try{
            java.io.InputStream in=this.getClass().getResourceAsStream("jdbc.properties");
            prop.load(in);
            if(in!=null){
            	in.close();
            }      
        }catch(java.io.IOException e){
            System.out.println("[jdbc.properties] 配置文件打开错误！");
            return;
        }
        /*读取各种参数*/
		String driver = prop.getProperty("jdbc.driverClassName");   
    	String url = prop.getProperty("jdbc.url");   
    	String username = prop.getProperty("jdbc.username");   
    	String password = prop.getProperty("jdbc.password");   
		try {
			/*建立连接*/
			Class.forName(driver).newInstance();
			conn=DriverManager.getConnection(url,username,password);	
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	public Connection getConn(){
		return conn;
	}

	public boolean isVisitorInsertSuccess(VisitorBean visitor){

		boolean result = true;	

		try {
			pmt=conn.prepareStatement("insert into visitor_tb(name,email,message,date) values(?,?,?,?)");
			pmt.setString(1,visitor.getName());
			pmt.setString(2,visitor.getEmail());
			pmt.setString(3,visitor.getMessage());
			pmt.setString(4,visitor.getDate());
			pmt.executeUpdate();
			
			pmt.close();
			conn.close();
		} catch (SQLException ex) {
			result = false;
			
			ex.printStackTrace();
		}

		return result;
	}

	public boolean delVisitorInfo(int id_num){

		boolean result = false;	

		try {
			pmt=conn.prepareStatement("delete from visitor_tb where id = ?");
			pmt.setInt(1,id_num);
			pmt.executeUpdate();

			result = true;

			pmt.close();
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

	    return result;
	}

	public boolean isPrivateTalkInsertSuccess(PrivateTalkBean privateTalk){

		boolean result = true;	

		try {
			pmt=conn.prepareStatement("insert into private_tb(role,message,date) values(?,?,?)");
			pmt.setString(1,privateTalk.getRole());
			pmt.setString(2,privateTalk.getMessage());
			pmt.setString(3,privateTalk.getDate());
			pmt.executeUpdate();
			
			pmt.close();
			conn.close();
		} catch (SQLException ex) {
			result = false;
			
			ex.printStackTrace();
		}

		return result;
	}

}


