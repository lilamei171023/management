package com.hellojava.database.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hellojava.database.DBManager;
import com.hellojava.entity.User;

public class UserDao extends DBManager{
	/**
	 * 根据传入的信息查询数据库是否存在相关联的数据
	 * @param u 前台用户填写的用户信息
	 * @return 数据根据用户填写的用户信息查询的数据的用户信息
	 * @throws Exception
	 * 
	 */
	public User loadUserByName(User u)throws Exception{
		User user=null;
		Connection conn=this.openConnection();
		String sql="select * from users where user_name=?";
		Object[] obs={u.getUserName()};
		ResultSet rs=this.query(conn, sql, obs);
		if(rs.next()){
			user=new User();
			user.setUserId(rs.getInt("user_id"));
			user.setUserName(rs.getString("user_name"));
			user.setUserSex(rs.getString("user_sex"));
		}
		this.closeConnection();
		return user;
	}
	
	public User loadUserByNumber(String n)throws Exception{
		User user=null;
		Connection conn=this.openConnection();
		String sql="select user_number,user_name,user_formerdept,user_nowdept from users where user_number=? ";
		Object[] obs={n};
		ResultSet rs=this.query(conn, sql, obs);
		if(rs.next()){
			user=new User();
			user.setUserNumber(rs.getString("user_number"));
			user.setUserName(rs.getString("user_name"));
			user.setUserformerDept(rs.getString("user_formerdept"));
			user.setUsernowDept(rs.getString("user_nowdept"));
			 
		}
		this.closeConnection();
		return user;
	}
	
	/**
	 * 员工调动信息查询
	 * @param page 当前页面
	 * @return 一个存有User对象的数组
	 * @throws Exception
	 */
	public List<User> loadAll(int page)throws Exception{
		List<User> users=new ArrayList<>();
		Connection conn=this.openConnection();
		String sql="select user_number,user_name,user_formerdept,user_nowdept from users limit ?,?";
		Object[] obs={page*7,7};
		ResultSet rs=this.query(conn, sql, obs);
		while(rs.next()){
			User b=new User();
			b.setUserNumber(rs.getString("user_number"));
			b.setUserName(rs.getString("user_name"));
			b.setUserformerDept(rs.getString("user_formerdept"));
			b.setUsernowDept(rs.getString("user_nowdept"));
			users.add(b);
		}
		this.closeConnection();
		return users;
	}
	 
//	public List<User> loadByData(int page,String section,String data)throws Exception{
//		Connection conn=DBManager.openConnection();
//		String sql=null;
//		ResultSet rs=null;
//		List<User> users=new ArrayList();
//		User s;
//		if(section.equals("user_nowdept")){
//		
//		
//			 sql = "SELECT * FROM users WHERE user_nowdept=? limit ?,?";
//		     Object[] obs={data,page*10,10};
//			 rs=DBManager.query(conn, sql,obs);
//			
//		}
//	    if(section.equals("user_sex")){	
//		    sql = "SELECT * FROM users WHERE user_sex=? limit ?,?";
//			Object[] obs={data,page*10,10};
//		 	 rs=DBManager.query(conn, sql,obs);
//		}
//		if(section.equals("user_train")){
//			if(data.equals("培训")){
//				data="是";
//			}
//			else{
//				data="否";
//			}
//			sql = "SELECT * FROM users WHERE user_train=? limit ?,?";
//			Object[] obs={data,page*10,10};
//		    rs=DBManager.query(conn, sql,obs);
//		}else{   if(data.equals("90以上")){
//					sql = "SELECT * FROM users WHERE user_grade>=? limit ?,?";
//				    Object[] obs={"90",page*10,10};
//				    rs=DBManager.query(conn, sql,obs);
//				 }
//				 if(data.equals("80-90")){
//					sql = "SELECT * FROM users WHERE user_grade>=? and user_grade<? limit ?,?";
//					Object[] obs={"80","90",page*10,10};
//					rs=DBManager.query(conn, sql,obs);
//				 }
//				 if(data.equals("60-80")){
//					sql = "SELECT * FROM users WHERE user_grade>=? and user_grade<? limit ?,?";
//					Object[] obs={"60","80",page*10,10};
//					rs=DBManager.query(conn, sql,obs);
//				 }
//				 if(data.equals("60以下")){
//					sql = "SELECT * FROM users WHERE user_grade<? limit ?,?";
//					Object[] obs={"60",page*10,10};
//				    rs=DBManager.query(conn, sql,obs);	
//				 }
//		 	 }
//		
//			while(rs.next()){
//				s=new User();
//				s.setuser_number(rs.getString("user_number"));
//		        s.setuser_name(rs.getString("user_name"));
//		        s.setuser_sex(rs.getString("user_sex"));
//		        s.setuser_title(rs.getString("user_title"));
//		        s.setuser_salary(rs.getDouble("user_salary"));
//		        s.setuser_formerdept(rs.getString("user_formerdept"));
//		        s.setuser_nowdept(rs.getString("user_nowdept"));
//		        s.setuser_train(rs.getString("user_train"));
//		        s.setuser_reward(rs.getLong("user_reward"));
//		        s.setuser_grade(rs.getInt("user_grade"));
//		        users.add(s);
//			}
//			DBManager.closeConnection();
//			return users;
//	   }
	public List<User> loadAlls(int page)throws Exception{
		List<User> users=new ArrayList<>();
		Connection conn=this.openConnection();
		String sql="select user_number,user_name,user_sex,user_education,user_age,user_title,user_formerdept,user_nowdept,user_salary,user_train,user_reward,user_grade from users limit ?,? ";
		Object[] obs={page*7,7};
		ResultSet rs=this.query(conn, sql, obs);
		while(rs.next()){
			User b=new User();
		//	b.setuser_id(rs.getInt("user_id"));
			b.setUserNumber(rs.getString("user_number"));
			b.setUserName(rs.getString("user_name"));
        	b.setUserSex(rs.getString("useSex"));
        	b.setUserEducation(rs.getString("user_education"));
        	b.setUserAge(rs.getString("user_age"));
     		b.setUserTitle(rs.getString("user_title"));
			b.setUserformerDept(rs.getString("user_formerdept"));
			b.setUsernowDept(rs.getString("user_nowdept"));
			b.setUserSalary(rs.getDouble("user_salary"));
			b.setUserTrain(rs.getString("user_train"));
			b.setUserReward(rs.getDouble("user_reward"));
			b.setUserGrade(rs.getDouble("user_grade"));
			users.add(b);
		}
		this.closeConnection();
		return users;
	}
	
	public int getMaxCount()throws Exception{
		int maxCount=0;
		Connection conn=this.openConnection();
		String sql="select count(user_id) from users";
		ResultSet rs=this.query(conn, sql, null);
		if(rs.next()){
			maxCount=rs.getInt(1);
		}
		this.closeConnection();
		return maxCount;
	}
	public int getMaxCount1(String section,String data) throws Exception{
	
		int maxCount=0;
		String sql=null;
		ResultSet rs=null;
		Connection conn=this.openConnection();
		
		if("部门".equals(section)){
			 sql = "SELECT COUNT(user_id) FROM users WHERE user_nowdept=?";
		     Object[] obs={data};
			 rs=DBManager.query(conn, sql,obs);
			
		}
		else if(section.equals("性别")){	
		    sql = "SELECT COUNT(user_id) FROM users WHERE user_sex=?";
			Object[] obs={data};
		 	 rs=DBManager.query(conn, sql,obs);
		}
		else if(section.equals("是否培训")){
			if(data.equals("培训")){
				data="是";
			}
			else{
				data="否";
			}
			sql = "SELECT COUNT(user_id) FROM users WHERE user_train=?";
			Object[] obs={data};
		    rs=DBManager.query(conn, sql,obs);
		 }
		else{  
			if(data.equals("90及以上")){
					sql = "SELECT COUNT(user_id) FROM users WHERE user_grade>=?";
				    Object[] obs={90.0};
				    rs=DBManager.query(conn, sql,obs);
				 }
				 if(data.equals("80-90")){
					sql = "SELECT COUNT(user_id) FROM users WHERE user_grade>=? and user_grade<?";
					Object[] obs={80.0,90.0};
					rs=DBManager.query(conn, sql,obs);
				 }
				 if(data.equals("60-80")){
					sql = "SELECT COUNT(user_id) FROM users WHERE user_grade>=? and user_grade<?";
					Object[] obs={60.0,80.0};
					rs=DBManager.query(conn, sql,obs);
				 }
				 if(data.equals("60以下")){
					sql = "SELECT COUNT(user_id) FROM users WHERE user_grade<?";
					Object[] obs={60.0};
				    rs=DBManager.query(conn, sql,obs);	
				 }
		 	 }
		 sql="select count(user_number) from users where";
		
		if(rs.next()){
			maxCount=rs.getInt(1);
		}
		   
		this.closeConnection();
		return maxCount;
}
	public int save(User user)throws Exception{
		Connection conn=this.openConnection();
		String sql="insert into users (user_id,user_number,user_name,user_sex,user_education,user_age) values(default,?,?,?,?,?)";
		Object[] obs={user.getUserNumber(),user.getUserName(),user.getUserSex(),user.getUserEducation(),user.getUserAge()};
		int count=this.update(conn, sql, obs);
		this.closeConnection();
		return count;
	}
	
	public List<User> loadAllUser(String user_number)throws Exception{
		List<User> users=new ArrayList<>();
		Connection conn=this.openConnection();
		String sql="select * from users where user_number=?";
		Object[] obs={user_number};
		ResultSet rs=this.query(conn, sql, obs);
		
		while(rs.next()){
			User b=new User();
			b.setUserId(rs.getInt("user_id"));
			b.setUserNumber(rs.getString("user_number"));
			b.setUserName(rs.getString("user_name"));
        	b.setUserSex(rs.getString("user_sex"));
        	b.setUserEducation(rs.getString("user_education"));
        	b.setUserAge(rs.getString("user_age"));
     		b.setUserTitle(rs.getString("user_title"));
			b.setUserformerDept(rs.getString("user_formerDept"));
			b.setUsernowDept(rs.getString("user_nowDept"));
			b.setUserSalary(rs.getDouble("user_salary"));
			b.setUserTrain(rs.getString("user_train"));
			b.setUserReward(rs.getDouble("user_reward"));
			b.setUserGrade(rs.getDouble("user_grade"));
			users.add(b);
		}
		DBManager.closeConnection();
		return users;
	}
	
	public List<User> loadAllBF(int page,String section,String data)throws Exception
	{
		
		 List<User> u=new ArrayList<>();
		 Connection conn=this.openConnection();
		 
		 if(section.equals("部门"))
		 {   
		    String sql = "select * from users where user_nowdept=? limit ?,? ";
		    Object[] obs={data,page*7,7};
		    ResultSet rs=this.query(conn,sql,obs);
		    while(rs.next()){
		      User s=new User();
		  //      s.setuser_id(rs.getInt("user_id"));
				s.setUserNumber(rs.getString("user_number"));
				s.setUserName(rs.getString("user_name"));
	        	s.setUserSex(rs.getString("user_sex"));
	        	s.setUserEducation(rs.getString("user_education"));
	        	s.setUserAge(rs.getString("user_age"));
	     		s.setUserTitle(rs.getString("user_title"));
				s.setUserformerDept(rs.getString("user_formerdept"));
				s.setUsernowDept(rs.getString("user_nowdept"));
				s.setUserSalary(rs.getDouble("user_salary"));
				s.setUserTrain(rs.getString("user_train"));
				s.setUserReward(rs.getDouble("user_reward"));
				s.setUserGrade(rs.getDouble("user_grade"));
				u.add(s);
		 }
		     this.closeConnection();
		     return u;
		}
		 else if(section.equals("性别"))
		{
			String sql = "select * from users where user_sex=? limit ?,?";
			Object[] obs={data,page*7,7};
			ResultSet rs=this.query(conn, sql,obs);
			while(rs.next()){
				  User s=new User();
			    //    s.setuser_id(rs.getInt("user_id"));
					s.setUserNumber(rs.getString("user_number"));
					s.setUserName(rs.getString("user_name"));
		        	s.setUserSex(rs.getString("user_sex"));
		        	s.setUserEducation(rs.getString("user_education"));
		        	s.setUserAge(rs.getString("user_age"));
		     		s.setUserTitle(rs.getString("user_title"));
					s.setUserformerDept(rs.getString("user_formerdept"));
					s.setUsernowDept(rs.getString("user_nowdept"));
					s.setUserSalary(rs.getDouble("user_salary"));
					s.setUserTrain(rs.getString("user_train"));
					s.setUserReward(rs.getDouble("user_reward"));
					s.setUserGrade(rs.getDouble("user_grade"));
					u.add(s);
			}
			
			this.closeConnection();	
			return u;
		}
		 
		 else if(section.equals("是否培训"))
		{
			if(data.equals("培训")){
				data="是";
			}
			if(data.equals("未培训")){
				data="否";
			}
			String sql = "select * from users where user_train=? limit ?,?";
			Object[] obs={data,page*7,7};
			ResultSet rs=this.query(conn, sql,obs);
			while(rs.next()){
				  User s=new User();
			        s.setUserId(rs.getInt("user_id"));
					s.setUserNumber(rs.getString("user_number"));
					s.setUserName(rs.getString("user_name"));
		        	s.setUserSex(rs.getString("user_sex"));
		        	s.setUserEducation(rs.getString("user_education"));
		        	s.setUserAge(rs.getString("user_age"));
		     		s.setUserTitle(rs.getString("user_title"));
					s.setUserformerDept(rs.getString("user_formerdept"));
					s.setUsernowDept(rs.getString("user_nowdept"));
					s.setUserSalary(rs.getDouble("user_salary"));
					s.setUserTrain(rs.getString("user_train"));
					s.setUserReward(rs.getDouble("user_reward"));
					s.setUserGrade(rs.getDouble("user_grade"));
					u.add(s);
			}
			this.closeConnection();		
			return u;
		}
		else  
		{
			
			if(data.equals("90及以上"))
			{
			String sql = "select * from users where user_grade>=? limit ?,?";
			Object[] obs={90,page*7,7};
			ResultSet rs=this.query(conn, sql,obs);
			while(rs.next())
			{
				  User s=new User();
			        s.setUserId(rs.getInt("user_id"));
					s.setUserNumber(rs.getString("user_number"));
					s.setUserName(rs.getString("user_name"));
		        	s.setUserSex(rs.getString("user_sex"));
		        	s.setUserEducation(rs.getString("user_education"));
		        	s.setUserAge(rs.getString("user_age"));
		     		s.setUserTitle(rs.getString("user_title"));
					s.setUserformerDept(rs.getString("user_formerdept"));
					s.setUsernowDept(rs.getString("user_nowdept"));
					s.setUserSalary(rs.getDouble("user_salary"));
					s.setUserTrain(rs.getString("user_train"));
					s.setUserReward(rs.getDouble("user_reward"));
					s.setUserGrade(rs.getDouble("user_grade"));
					u.add(s);
			  }
			this.closeConnection();
			return u;
			}
			else if(data.equals("80-90"))
			{
				String sql = "select * from users where user_grade>=? and user_grade<? limit ?,?";
				Object[] obs={80.0,90.0,page*7,7};
				ResultSet rs=this.query(conn, sql,obs);
				while(rs.next())
				{
					  User s=new User();
				        s.setUserId(rs.getInt("user_id"));
						s.setUserNumber(rs.getString("user_number"));
						s.setUserName(rs.getString("user_name"));
			        	s.setUserSex(rs.getString("user_sex"));
			        	s.setUserEducation(rs.getString("user_education"));
			        	s.setUserAge(rs.getString("user_age"));
			     		s.setUserTitle(rs.getString("user_title"));
						s.setUserformerDept(rs.getString("user_formerdept"));
						s.setUsernowDept(rs.getString("user_nowdept"));
						s.setUserSalary(rs.getDouble("user_salary"));
						s.setUserTrain(rs.getString("user_train"));
						s.setUserReward(rs.getDouble("user_reward"));
						s.setUserGrade(rs.getDouble("user_grade"));
						u.add(s);
				   }
				  this.closeConnection();
				  return u;
				}
			else if(data.equals("60-80"))
			{
				 String sql = "select * from users where user_grade>=? and user_grade<? limit ?,? ";
				Object[] obs={60.0,80.0,page*7,7};
				ResultSet rs=this.query(conn, sql,obs);
				while(rs.next())
				{
					  User s=new User();
				        s.setUserId(rs.getInt("user_id"));
						s.setUserNumber(rs.getString("user_number"));
						s.setUserName(rs.getString("user_name"));
			        	s.setUserSex(rs.getString("user_sex"));
			        	s.setUserEducation(rs.getString("user_education"));
			        	s.setUserAge(rs.getString("user_age"));
			     		s.setUserTitle(rs.getString("user_title"));
						s.setUserformerDept(rs.getString("user_formerdept"));
						s.setUsernowDept(rs.getString("user_nowdept"));
						s.setUserSalary(rs.getDouble("user_salary"));
						s.setUserTrain(rs.getString("user_train"));
						s.setUserReward(rs.getDouble("user_reward"));
						s.setUserGrade(rs.getDouble("user_grade"));
						u.add(s);
				   }
				 this.closeConnection();
				 return u;
				}
			  else if(data.equals("60以下"))
			  {
				String sql = "select * from users where user_grade>? limit ?,? ";
				Object[] obs={60,page*7,7};
				ResultSet rs=this.query(conn, sql,obs);
				
				while(rs.next())
				{
					  User s=new User();
				        s.setUserId(rs.getInt("user_id"));
						s.setUserNumber(rs.getString("user_number"));
						s.setUserName(rs.getString("user_name"));
			        	s.setUserSex(rs.getString("user_sex"));
			        	s.setUserEducation(rs.getString("user_education"));
			        	s.setUserAge(rs.getString("user_age"));
			     		s.setUserTitle(rs.getString("user_title"));
						s.setUserformerDept(rs.getString("user_formerdept"));
						s.setUsernowDept(rs.getString("user_nowdept"));
						s.setUserSalary(rs.getDouble("user_salary"));
						s.setUserTrain(rs.getString("user_train"));
						s.setUserReward(rs.getDouble("user_reward"));
						s.setUserGrade(rs.getDouble("user_grade"));
						u.add(s);
				 }
				this.closeConnection();
				
	          }
			return u;
		   }
		  
	   } 
	public int update(User user)throws Exception{
		Connection conn=DBManager.openConnection();
		String sql="update users set user_title=?,user_salary=?,user_formerdept=?,user_nowdept=?,user_train=?,user_reward=?,user_grade=? where user_number=?";
		Object[] obs={user.getUserTitle(),user.getUserSalary(),user.getUserformerDept(),user.getUsernowDept(),user.getUserTrain(),user.getUserReward(),user.getUserGrade(),user.getUserNumber()};
		int count=DBManager.update(conn, sql, obs);
		DBManager.closeConnection();
		return count;
	}

	public int delete(User user)throws Exception{
		Connection conn=DBManager.openConnection();
		String sql="delete from users  where user_number=?";
		Object[] obs={user.getUserNumber()};
		int count=DBManager.update(conn, sql, obs);
		DBManager.closeConnection();
		return count;
	}
}
