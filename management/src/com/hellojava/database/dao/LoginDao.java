package com.hellojava.database.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import com.hellojava.database.DBManager;
import com.hellojava.entity.User;
import com.hellojava.entity.Login;

public class LoginDao extends DBManager{
 
	/**
	 * 根据传入的信息查询数据库是否存在相关联的数据
	 * @param u 前台用户填写的用户信息
	 * @return 数据根据用户填写的用户信息查询的数据的用户信息
	 * @throws Exception
	 * 
	 */
	public Login loadUserByName(Login u)throws Exception{
		Login Login=null;
		Connection conn=this.openConnection();
		String sql="select * from Login where Login_number=? and Login_pwd=md5(?)";
		Object[] obs={u.getLoginNumber(),u.getLoginPwd()};
		ResultSet rs=this.query(conn, sql, obs);
		if(rs.next()){
			Login=new Login();
			Login.setLoginId(rs.getInt("Login_id"));
			Login.setLoginPwd(rs.getString("Login_pwd"));
			Login.setLoginNumber(rs.getString("Login_number"));
		}
		this.closeConnection();
		return Login;
	}
	public int getMaxCount()throws Exception{
		int maxCount=0;
		Connection conn=this.openConnection();
		String sql="select count(Login_id) from Login";
		ResultSet rs=this.query(conn, sql, null);
		if(rs.next()){
			maxCount=rs.getInt(1);
		}
		this.closeConnection();
		return maxCount;
	}
	
	public int save(Login Login)throws Exception{
		Connection conn=this.openConnection();
		String sql="insert into login (login_id,login_pwd,login_number) values(default,md5(?),?)";
		Object[] obs={Login.getLoginPwd(),Login.getLoginNumber()};
		int count=this.update(conn, sql, obs);
		this.closeConnection();
		return count;
	}
	
	public int revisePwd(Login Login) throws Exception {
		Connection conn=this.openConnection();
		String sql="update Login set Login_pwd=md5(?) where Login_number=?";
		Object[] obs={Login.getLoginPwd(),Login.getLoginNumber()};
		int count=this.update(conn, sql, obs);
		this.closeConnection();
		return count;
	}
	public int delete(Login user)throws Exception{
		Connection conn=DBManager.openConnection();
		String sql="delete from Login  where Login_number=?";
		Object[] obs={user.getLoginNumber()};
		int count=DBManager.update(conn, sql, obs);
		DBManager.closeConnection();
		return count;
	}
}
