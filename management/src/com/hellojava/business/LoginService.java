package com.hellojava.business;

import javax.swing.plaf.synth.SynthSeparatorUI;
import javax.swing.plaf.synth.SynthToggleButtonUI;

import org.apache.log4j.Logger;
import com.hellojava.database.dao.LoginDao;
import com.hellojava.entity.User;
import com.hellojava.entity.Login;

//service Ϊҵ��
public class LoginService {
	private LoginDao loginDao=new LoginDao();
	//������־��
	private Logger log=Logger.getLogger(LoginService.class);
	//��½ҵ�� boolean ��½�ɹ�
	
	public boolean checkLogin(Login u){
		boolean bool=false;
		try {
			Login Login=loginDao.loadUserByName(u);
			if(Login!=null){
				bool=true;
			}
		} catch (Exception e) {
			log.debug(e.getMessage());
		}
		return bool;
	}

	public boolean save(Login Login){
		boolean bool=false;
		try{
			int count=loginDao.save(Login);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
	
	public boolean revisePwd(Login Login) {
		boolean bool=false;
		try{
			int count=loginDao.revisePwd(Login);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	}
	
	
	public boolean delete(Login user){
		boolean bool=false;
		try{
			int count=loginDao.delete(user);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
	
	
	
	
	
	
	
	
	
	
}
