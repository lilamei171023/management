package com.hellojava.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable{
   private int     userId;
   private String  userNumber;
   private String  userName;
   private String  userSex;	
   private String  userEducation;
   private String  userAge;
   private String  userTitle;
   private String  userformerDept;
   private String  usernowDept;
   private double  userSalary;
   private String  userTrain;
   private double  userReward;
   private double  userGrade;
   private String createAt;
   private String updateAt;
   private int delete;
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getUserNumber() {
	return userNumber;
}
public void setUserNumber(String userNumber) {
	this.userNumber = userNumber;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserSex() {
	return userSex;
}
public void setUserSex(String userSex) {
	this.userSex = userSex;
}
public String getUserEducation() {
	return userEducation;
}
public void setUserEducation(String userEducation) {
	this.userEducation = userEducation;
}
public String getUserAge() {
	return userAge;
}
public void setUserAge(String userAge) {
	this.userAge = userAge;
}
public String getUserTitle() {
	return userTitle;
}
public void setUserTitle(String userTitle) {
	this.userTitle = userTitle;
}
public String getUserformerDept() {
	return userformerDept;
}
public void setUserformerDept(String userformerDept) {
	this.userformerDept = userformerDept;
}
public String getUsernowDept() {
	return usernowDept;
}
public void setUsernowDept(String usernowDept) {
	this.usernowDept = usernowDept;
}
public double getUserSalary() {
	return userSalary;
}
public void setUserSalary(double userSalary) {
	this.userSalary = userSalary;
}
public String getUserTrain() {
	return userTrain;
}
public void setUserTrain(String userTrain) {
	this.userTrain = userTrain;
}
public double getUserReward() {
	return userReward;
}
public void setUserReward(double userReward) {
	this.userReward = userReward;
}
public double getUserGrade() {
	return userGrade;
}
public void setUserGrade(double userGrade) {
	this.userGrade = userGrade;
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
	return "User [userId=" + userId + ", userNumber=" + userNumber + ", userName=" + userName + ", userSex=" + userSex
			+ ", userEducation=" + userEducation + ", userAge=" + userAge + ", userTitle=" + userTitle
			+ ", userformerDept=" + userformerDept + ", usernowDept=" + usernowDept + ", userSalary=" + userSalary
			+ ", userTrain=" + userTrain + ", userReward=" + userReward + ", userGrade=" + userGrade + ", createAt="
			+ createAt + ", updateAt=" + updateAt + ", delete=" + delete + "]";
}

}
