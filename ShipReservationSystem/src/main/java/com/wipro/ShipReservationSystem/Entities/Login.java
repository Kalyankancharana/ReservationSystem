package com.wipro.ShipReservationSystem.Entities;

public class Login {
	private String username;
	private String password;
	private String newpassword;
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Login(String username, String password, String newpassword) {
		super();
		this.username = username;
		this.password = password;
		this.newpassword = newpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	

}
