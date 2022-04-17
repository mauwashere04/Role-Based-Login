package com.lithan.mp3.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lithan.mp3.bean.MyLogin;

public class Admin {
	// method for create connection
		public static Connection getConnection() throws Exception {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				return DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3", "root", "root");
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}

		// method for save user data in database
		public int registerUser(String uname, String uemail, String udep, String upass, String urole) throws Exception {
			int i = 0;
			try {
				String sql = "INSERT INTO user VALUES (?,?,?,?,?)";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, uname);
				ps.setString(2, uemail);
				ps.setString(3, udep);
				ps.setString(4, upass);
				ps.setString(5, urole);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				return i;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}

		public MyLogin loginDetail(String uemail, String upass) {
			MyLogin mylog=null;
			try {
				String sql = "SELECT uemail,upass, urole from user";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ResultSet res=ps.executeQuery();
				while(res.next()) {
				String uemail1=res.getString("uemail");
				String upass1=res.getString("upass");
				String uroles1=res.getString("urole");
				if(uemail1.equalsIgnoreCase(uemail) && upass1.equalsIgnoreCase(upass)) {
					mylog=new MyLogin(uemail1, upass1, uroles1, true);
					break;
				}else {
					mylog=null;
				}
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return mylog;
			
		}
		
		// method for fetch saved user data
		public ResultSet report() throws SQLException, Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT UNAME,UEMAIL,UDEP,UPASS,UROLE FROM USER";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				rs = ps.executeQuery();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
	
	
		// method for fetch old data to be update
		public ResultSet fetchUserDetails(String uemail) throws SQLException, Exception {
			ResultSet rs = null;
			try {
				String sql = "SELECT UNAME,UEMAIL,UDEP, UPASS, UROLE FROM USER WHERE UEMAIL=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, uemail);
				rs = ps.executeQuery();
				return rs;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}

		// method for update new data in database
		public int updateUserDetails(String uname, String uemail,  String udep, String upass, String urole, String uemailhidden)
				throws SQLException, Exception {
			getConnection().setAutoCommit(false);
			int i = 0;
			try {
				String sql = "UPDATE USER SET UNAME=?,UEMAIL=?,UDEP=?,UPASS=?,UROLE=? WHERE UEMAIL=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, uname);
				ps.setString(2, uemail);
				ps.setString(3, udep);
				ps.setString(4, upass);
				ps.setString(5, urole);
				ps.setString(6, uemailhidden);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				getConnection().rollback();
				return 0;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}

		// method for delete the record
		public int deleteUserDetails(String uemail) throws SQLException, Exception {
			getConnection().setAutoCommit(false);
			int i = 0;
			try {
				String sql = "DELETE FROM USER WHERE UEMAIL=?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				ps.setString(1, uemail);
				i = ps.executeUpdate();
				return i;
			} catch (Exception e) {
				e.printStackTrace();
				getConnection().rollback();
				return 0;
			} finally {
				if (getConnection() != null) {
					getConnection().close();
				}
			}
		}
}
