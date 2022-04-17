package com.lithan.mp3.action;

import com.lithan.mp3.dao.Admin;
import com.opensymphony.xwork2.ActionSupport;
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 2139116285823340125L;
	private String uname, uemail, udep, upass, urole;
	private String msg = "";
	Admin admin = null;
	int ctr = 0;
	
	public RegisterAction() {
		// TODO Auto-generated constructor stub
	}
    public String execute() throws Exception{
    	
    System.out.println(uname+" "+uemail+" "+udep+" "+upass+" "+urole);
    Admin myDb=new Admin();
    myDb.registerUser(uname,uemail,udep,upass,urole);
    	return "REGISTER";
    }
	public RegisterAction(String uname, String uemail, String udep,
			String upass, String urole) {
		super();
		this.uname = uname;
		this.uemail = uemail;
		this.udep = udep;
		this.upass = upass;
		this.urole = urole;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	
	public String getUdep() {
		return udep;
	}

	public void setUdep(String udep) {
		this.udep = udep;
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getCtr() {
		return ctr;
	}

	public void setCtr(int ctr) {
		this.ctr = ctr;
	}
}
