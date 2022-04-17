package com.lithan.mp3.bean;

public class MyLogin {
	String uemail,upass,urole;
	boolean flag;
	
	public MyLogin() {
		// TODO Auto-generated constructor stub
	}
	
	public MyLogin(String uemail, String upass, String urole, boolean flag) {
		super();
		this.uemail = uemail;
		this.upass = upass;
		this.urole = urole;
		this.flag = flag;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getUrole() {
		return urole;
	}

	public void setUrole(String urole) {
		this.urole = urole;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	



	

	
}
