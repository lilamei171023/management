package com.hellojava.database.tools;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Configuration {
	private static Properties properties;
	private static String configFilePath="/db.properties";
	
	public static void setConfigFilePath(String configFilePath) {
		Configuration.configFilePath = configFilePath;
	}
	
	static{
		InputStream inStream=Configuration.class.getResourceAsStream(configFilePath);
		if(inStream!=null){
			properties=new Properties();
			try {
				properties.load(inStream);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	private static void rebuilder() throws Exception{
		InputStream inStream=Configuration.class.getResourceAsStream(configFilePath);
		if(inStream!=null){
			properties=new Properties();
			try {
				properties.load(inStream);
			} catch (IOException e) {
				throw new Exception("配置文件的路径不正确");
			}
		}
	}
	
	public static String getProperty(String key)throws Exception{
		if(properties==null)
			rebuilder();
		return properties.getProperty(key);
	}
	
}
