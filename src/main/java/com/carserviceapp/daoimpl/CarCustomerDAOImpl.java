package com.carserviceapp.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.carserviceapp.connection.*;
import com.carserviceapp.dao.CarCustomerDAO;
import com.carserviceapp.model.*;

public class CarCustomerDAOImpl implements CarCustomerDAO
	{
	   public boolean insert(CarCustomer user) 
	   {
		   String insertQuery="insert into userdetails(u_name,mobileno,u_password,u_email,u_address) values(?,?,?,?,?)";
		   Connection con = null;
		   try {
			con = ConnectionUtil.getDBconnection();
		    PreparedStatement stmt = null;
			stmt = con.prepareStatement(insertQuery);
			stmt.setString(1,user.getName());
			stmt.setLong(2,user.getMobileno());
			stmt.setString(3,user.getPassword());
			stmt.setString(4,user.getEmail());
			stmt.setString(5,user.getAddress());
		   int i = 0;
			i = stmt.executeUpdate();
			stmt.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	   }
	   
	   public String fetch(CarCustomer userpasscheck) 
	   {	
			String query="select u_name,u_password from userdetails where u_name in ? and u_password in ?";
			Connection con = null;
			try {
				con = ConnectionUtil.getDBconnection();
			PreparedStatement pstmt = null;
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, userpasscheck.getName());
				pstmt.setString(2, userpasscheck.getPassword());
			ResultSet rs = null;
				rs = pstmt.executeQuery();
				if(rs.next()) {
					String query1="select usertype from userdetails where u_name in ?";
					PreparedStatement pstmt1 = con.prepareStatement(query1);
					pstmt1.setString(1, userpasscheck.getName());
					ResultSet rs1 = pstmt1.executeQuery();
					rs1.next();
					return rs1.getString(1);
				}
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "invalid";	
		}
	   
	   //my account option in user profile
	   public ResultSet view(CarCustomer myaccount)
	   {
		 String query="select * from userdetails where u_name in ?";  
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				con = ConnectionUtil.getDBconnection();
			    pstmt = con.prepareStatement(query);
				pstmt.setString(1, myaccount.getName());
				 rs = pstmt.executeQuery();
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
	   }
	   
	   public int fetchid(CarCustomer myaccount) throws SQLException
	   {
		    String query="select user_id from userdetails where u_name in ?";  
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			System.out.println(myaccount.getName());
			
			try {
				con = ConnectionUtil.getDBconnection();
			    pstmt = con.prepareStatement(query);
				pstmt.setString(1, myaccount.getName());
				 rs = pstmt.executeQuery();
			} catch (SQLException | ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			rs.next();
			return rs.getInt(1);
	   }   
	   
	   
	   public boolean update(CarCustomer user)
	   {
		  String updateQuery="update userdetails set u_password=? where user_id=?";
		  Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
     	  PreparedStatement stmt = null;
			stmt = con.prepareStatement(updateQuery);
			stmt.setString(1,user.getPassword());
			stmt.setInt(2,user.getUser_id());
		  int k = 0;
			k = stmt.executeUpdate();
			stmt.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	   }
	   public boolean delete(CarCustomer user)
	   {
		   String deleteQuery="update userdetails set usertype='invalid' where mobileno=?";
		   Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(deleteQuery);
			stmt.setLong(1,user.getMobileno());
		   int l = 0;
			l = stmt.executeUpdate();
			stmt.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	   }
	   public ResultSet view()
	   {
		   ResultSet rs=null;
			String showQuery="select u_name,mobileno,u_email,u_address,user_id from userdetails where usertype='user' or usertype='invalid'";
			Connection con;
			try {
				con = ConnectionUtil.getDBconnection();
				PreparedStatement pstmt=con.prepareStatement(showQuery);
				//pstmt.setInt(1, user_id);
				rs=pstmt.executeQuery(showQuery);
				
			}  catch (SQLException | ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return rs;
	   }
	}
