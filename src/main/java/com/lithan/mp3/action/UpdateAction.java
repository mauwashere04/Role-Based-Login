package com.lithan.mp3.action;

import java.sql.ResultSet;

import com.lithan.mp3.dao.Admin;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport {

	private static final long serialVersionUID = -1905974197186620917L;
	private String uname = "", uemail = "", udep = "", upass = "", urole = "", uemailhidden = "";
	private String msg = "";
	ResultSet rs = null;
	Admin dao = new Admin();
	String submitType;

	@Override
	public String execute() throws Exception {
		try {
			if (submitType.equals("updatedata")) {
				rs = dao.fetchUserDetails(uemail.trim());
				if (rs != null) {
					while (rs.next()) {
						uname = rs.getString("UNAME");
						uemail = rs.getString("UEMAIL");
						udep = rs.getString("UDEP");
						upass = rs.getString("UPASS");
						urole = rs.getString("UROLE");
					}
				}
			} else {
				int i = dao.updateUserDetails(uname, uemail, udep, upass, urole, uemailhidden);
				if (i > 0) {
					msg = "Record Updated Successfuly";
				} else {
					msg = "error";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "UPDATE";
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getUemailhidden() {
		return uemailhidden;
	}

	public void setUemailhidden(String uemailhidden) {
		this.uemailhidden = uemailhidden;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

	public String getUdep() {
		return udep;
	}

	public void setUdep(String udep) {
		this.udep = udep;
	}

	public String getUrole() {
		return urole;
	}

	public void setUrole(String urole) {
		this.urole = urole;
	}
	
	
}
