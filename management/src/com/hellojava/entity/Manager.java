package com.hellojava.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Manager implements Serializable{
	private int managerId;
	private String managerNumber;
	private String managerName;
	private String managerPwd;
    private String createAt;
    private String updateAt;
    private int delete;
	public Manager() {
	}
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerPwd() {
		return managerPwd;
	}
	public void setManagerPwd(String managerPwd) {
		this.managerPwd = managerPwd;
	}
	public String getManagerNumber() {
		return managerNumber;
	}
	public void setManagerNumber(String managerNumber) {
		this.managerNumber = managerNumber;
	}
	public String getCreateAt() {
		return createAt;
	}
	public void setCreateAt(String createAt) {
		this.createAt = createAt;
	}
	public String getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(String updateAt) {
		this.updateAt = updateAt;
	}
	public int getDelete() {
		return delete;
	}
	public void setDelete(int delete) {
		this.delete = delete;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managerNumber=" + managerNumber + ", managerName=" + managerName
				+ ", managerPwd=" + managerPwd + ", createAt=" + createAt + ", updateAt=" + updateAt + ", delete="
				+ delete + "]";
	}
	
}
