package com.hellojava.database.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hellojava.database.DBManager;
import com.hellojava.entity.Manager;

public class ManagerDao extends DBManager{
	
	
	public Manager loadManagerByName(Manager m)throws Exception{
		Manager manager=new Manager();
		Connection conn=this.openConnection();
		String sql="select * from manager where user_number=? and user_pwd=?";
		Object[] obs={m.getManagerNumber(),m.getManagerPwd()};
		ResultSet rs=this.query(conn, sql, obs);
		if(rs.next()){
			//manager=new Manager();
			manager.setManagerId(rs.getInt("user_id"));
			manager.setManagerName(rs.getString("user_name"));
			manager.setManagerPwd(rs.getString("user_pwd"));
			manager.setManagerNumber(rs.getString("user_number"));
		}
		this.closeConnection();
		return manager;
	}	
	
	public List<Manager> loadAll(int page)throws Exception{
		List<Manager> Managers=new ArrayList<>();
		Connection conn=this.openConnection();
		String sql="select * from book limit ?,?";
		Object[] obs={page*10,10};
		ResultSet rs=this.query(conn, sql, obs);
		while(rs.next()){
			Manager b=new Manager();
			b.setManagerId(rs.getInt("user_id"));
			b.setManagerName(rs.getString("user_name"));
			b.setManagerPwd(rs.getString("user_pwd"));
			b.setManagerNumber(rs.getString("user_number"));
			Managers.add(b);
		}
		this.closeConnection();
		return Managers;
	}
	
	public int save(Manager Manager)throws Exception{
		Connection conn=this.openConnection();
		String sql="insert into manager values(default,?,?,?)";
		Object[] obs={Manager.getManagerName(),Manager.getManagerPwd(),Manager.getManagerNumber()};
		int count=this.update(conn, sql, obs);
		this.closeConnection();
		return count;
	}
}
