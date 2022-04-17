package com.lithan.mp3.action;

import com.lithan.mp3.bean.MyLogin;
import com.lithan.mp3.dao.Admin;

public class LoginAction{  
	private String uemail,upass; 
	
	public String execute() throws Exception{
		
		String flag;
		Admin impl=new Admin();
		MyLogin my=impl.loginDetail(uemail, upass); 
		boolean data=my.isFlag();
		if(data) {
			if(my.getUrole().equals("ADMIN")) {
				return "SUCCESS";
			}else {
				return "INPUT";
			}
			
		}else {
			flag= "ERROR";
		}
		return flag;
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


	public LoginAction() {
		
	}
	public LoginAction(String uemail, String upass) {
		super();
		this.uemail = uemail;
		this.upass = upass;
	}

	@Override
	public String toString() {
		return "LoginAction [uemail=" + uemail + ", upass=" + upass + "]";
	}
	
	

}
