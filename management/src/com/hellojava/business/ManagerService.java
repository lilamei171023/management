package com.hellojava.business;

import java.util.List;

import org.apache.log4j.Logger;

import com.hellojava.database.dao.ManagerDao;
import com.hellojava.entity.Manager;

public class ManagerService {
	private ManagerDao managerDao=new ManagerDao();
	private Logger log=Logger.getLogger(ManagerService.class);
	
	public boolean checkManager(Manager m){
		boolean bool=false;
		try {
			Manager manager=managerDao.loadManagerByName(m);
			if(manager!=null){
				bool=true;
			}
		} catch (Exception e) {
			log.debug(e.getMessage());
		}
		return bool;
	}
	
	
	
	
	public List<Manager> loadAll(int page){
		List<Manager> Managers=null;
		try{
			Managers=managerDao.loadAll(page);
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return Managers;
	}
	
//	public int calcMaxPage(int displayCount){
//		int maxPage=0;
//		try{
//			int maxCount=managerDao.getMaxCount();
//			maxPage=maxCount%displayCount==0?maxCount/displayCount:maxCount/displayCount+1;
//		}catch(Exception e){
//			log.debug(e.getMessage());
//		}
//		return maxPage-1;
//	}
	
	public boolean save(Manager Manager){
		boolean bool=false;
		try{
			int count=managerDao.save(Manager);
			if(count>0){
				bool=true;
			}
		}catch(Exception e){
			log.debug(e.getMessage());
		}
		return bool;
	} 
}
