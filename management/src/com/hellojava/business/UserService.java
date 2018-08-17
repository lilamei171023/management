package com.hellojava.business;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.hellojava.database.dao.UserDao;
import com.hellojava.entity.User;

//service 为业务
public class UserService {
	private UserDao userDao=new UserDao();
	//创建日志类
	private Logger log=Logger.getLogger(UserService.class);
	//登陆业务 boolean 登陆成功
	public boolean checkUser(User u){
		boolean bool=false;
		try {
			User user=userDao.loadUserByName(u);
			if(user!=null){
				bool=true;
			}
		} catch (Exception e) {
			log.debug(e.getMessage());
		}
		return bool;
	}
	public List<User> loadAllBF(int page,String userName1,String userName2){
		  List<User> user=null;
		  try{
				user=userDao.loadAllBF(page,userName1,userName2);
		  }catch(Exception e){
				log.debug(e.getMessage());
		  }
		  return user;
	   }
	
	public List<User> loadAll(int page){
		List<User> users=null;
		try{
			users=userDao.loadAll(page);
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return users;
	}
	public List<User> loadAlls(int page){
		List<User> users=null;
		try{
			users=userDao.loadAlls(page);
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return users;
	}
	
	public User loadOne(String number){
		User user=null;
		try{
			user=userDao.loadUserByNumber(number);
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return user;
	}
	
	public int calcMaxPage(int displayCount){
		int maxPage=0;
		try{
			int maxCount=userDao.getMaxCount();
			maxPage=maxCount%displayCount==0?maxCount/displayCount:maxCount/displayCount+1;
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return maxPage-1;
	}
	public int calcMaxPage1(int displayCount,String plogin,String con){
		int maxPage=0;
		int maxCount=0;
		try{
			maxCount=userDao.getMaxCount1(plogin,con);
			maxPage=maxCount%displayCount==0?maxCount/displayCount:maxCount/displayCount+1;
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return maxPage-1;
		
	}
	
	
//	public List<User> loadByData(int page,String section,String data){
//		List<User> users=null;
//		try{
//			users=userDao.loadByData(page,section,data);
//		}catch(Exception e){
//			log.debug(e.getMessage());
//		}
//		return users;
//	}	
//	
	public boolean save(User user){
		boolean bool=false;
		try{
			int count=userDao.save(user);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
//	public User loadUser(String userNumber) {
//		User users=null;
//		try{users=userDao.loaduser(userNumber);
//		   }catch(Exception e) {
//			   log.debug(e.getMessage());
//		   }
//		
//		return users;
//	}
	public List<User> loadAllUser(String userNumber){
		List<User> users=new ArrayList<>();
		try{
			users=userDao.loadAllUser(userNumber);
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		//System.out.println(users);
		return users;
	}
	public boolean revise(User user){
		boolean bool=false;
		try{
			int count=userDao.update(user);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
	public boolean delete(User user){
		boolean bool=false;
		try{
			int count=userDao.delete(user);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
}
