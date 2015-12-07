package com.balu.curd.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@SuppressWarnings("serial")
@Entity
@Table(name="login_details")
public class Login implements Serializable {

	public Login() {

	}

	@Id
	@Column (name="user_name")
	private String userName;
	@Column(name="password")
	private String password;


	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Login(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

}
