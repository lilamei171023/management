package com.hellojava.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.hellojava.database.tools.Configuration;
import com.mysql.jdbc.Driver;

public abstract class DBManager {
	private static ThreadLocal<Connection> threadLocal=new ThreadLocal<>();
	
	static{
		try { 
			String driverClass=Configuration.getProperty("connection.driverClass");
			Class.forName(driverClass);
			//Class.forName(driverClass).newInstance();
			//new Driver();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static  Connection openConnection()throws Exception{
		Connection conn=threadLocal.get();
		if(conn==null){
			String url=Configuration.getProperty("connection.url");
			String user=Configuration.getProperty("connection.username");
			String password=Configuration.getProperty("connection.password");
			conn=DriverManager.getConnection(url,user,password);
			threadLocal.set(conn);
		}
		return conn;
	}
	
	public static  void closeConnection()throws Exception{
		Connection conn=threadLocal.get();
		if(conn!=null){
			conn.close();
			threadLocal.set(null);
		}
	}
	
	public static ResultSet query(Connection conn,String sql,Object...obs)throws Exception{
		ResultSet rs=null;
		if(conn!=null && !conn.isClosed()){
			PreparedStatement psment=conn.prepareStatement(sql);
			if(obs!=null){
				for (int i = 0; i < obs.length; i++) {
					psment.setObject(i+1, obs[i]);
				}
			}
			rs=psment.executeQuery();
		}
		return rs;
	}

	public static int update(Connection conn,String sql,Object...obs)throws Exception{
		int count=0;
		if(conn!=null && !conn.isClosed()){
			PreparedStatement psment=conn.prepareStatement(sql);
			if(obs!=null){
				for (int i = 0; i < obs.length; i++) {
					psment.setObject(i+1, obs[i]);
				}
			}
			count=psment.executeUpdate();
		}
		return count;
	}
	
}













