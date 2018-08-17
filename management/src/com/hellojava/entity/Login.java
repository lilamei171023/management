package com.hellojava.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Login implements Serializable{
	private int loginId;
	private String loginPwd;
	private String loginNumber;
	private String createAt;
    private String updateAt;
    private int delete;
	public Login() {
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getLoginNumber() {
		return loginNumber;
	}
	public void setLoginNumber(String loginNumber) {
		this.loginNumber = loginNumber;
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
		return "Login [loginId=" + loginId + ", loginPwd=" + loginPwd + ", loginNumber=" + loginNumber + ", createAt="
				+ createAt + ", updateAt=" + updateAt + ", delete=" + delete + "]";
	}
	
	
}


	