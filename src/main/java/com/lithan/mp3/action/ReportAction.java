package com.lithan.mp3.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lithan.mp3.dao.Admin;
import com.lithan.mp3.bean.EmpBean;
import com.opensymphony.xwork2.ActionSupport;

public class ReportAction extends ActionSupport {
	
	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	EmpBean bean = null;
	List<EmpBean> beanList = null;
	Admin admin = new Admin();
	private boolean noData = false;

	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<EmpBean>();
			rs = admin.report();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new EmpBean();
					bean.setSrNo(i);
					bean.setUname(rs.getString("UNAME"));
					bean.setUemail(rs.getString("UEMAIL"));
					bean.setUdep(rs.getString("UDEP"));
					bean.setUpass(rs.getString("UPASS").replaceAll("(?s).", "*"));
					bean.setUrole(rs.getString("UROLE"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REPORT";
	}
	

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public List<EmpBean> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<EmpBean> beanList) {
		this.beanList = beanList;
	}
}