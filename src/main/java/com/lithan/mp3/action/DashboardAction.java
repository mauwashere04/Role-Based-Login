package com.lithan.mp3.action;

import java.sql.ResultSet;

import com.lithan.mp3.dao.Admin;
import com.opensymphony.xwork2.ActionSupport;

public class DashboardAction extends ActionSupport{
	private static final long serialVersionUID = -146601914103585418L;
	String uname = "", uemail = "", udep = "";
	Admin dao = new Admin();
	ResultSet rs = null;
	String submitType;
	
	@Override
	public String execute() throws Exception {
		try {
			if (submitType.equals("dashboarddata")) {
			rs = dao.fetchUserDetails(uemail.trim());
			if (rs != null) {
				while (rs.next()) {
					uname = rs.getString("UNAME");
					uemail = rs.getString("UEMAIL");
					udep = rs.getString("UDEP");
				}
			}
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "SUCCESS";
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
	public String getSubmitType() {
		return submitType;
	}
	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}
	
	
}
