		package com.carserviceapp.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.carserviceapp.connection.*;
import com.carserviceapp.dao.CenterDetailsDAO;
import com.carserviceapp.model.*;
public class CenterDetailsDAOImpl implements CenterDetailsDAO
{
	   public boolean insert(CenterDetails center)
	   {
		   String insertQuery="insert into service_center(user_id,center_name,c_location,c_contact,c_email,c_address) values(?,?,?,?,?,?)";
		   Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(insertQuery);
			stmt.setInt(1,center.getUser_id());
			stmt.setString(2,center.getCenter_name());
			stmt.setString(3,center.getCenter_location());
			stmt.setLong(4,center.getCenter_contact());
			stmt.setString(5,center.getCenter_email());
			stmt.setString(6,center.getCenter_address());
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
	   public ResultSet showview() 
		{
			
			String showQuery="select center_id,center_name,c_location,c_contact,c_email,c_address from service_center";
			Connection con;
			ResultSet rs=null;
			try {
				con = ConnectionUtil.getDBconnection();
				PreparedStatement stmt=con.prepareStatement(showQuery);
				rs=stmt.executeQuery(showQuery);			
			}  catch (SQLException | ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return rs;
		}           
	   public boolean delete(CenterDetails center)
	   {
		  String deleteQuery="delete from service_center where center_id=?";
		  Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
	      PreparedStatement stmt = null;
			stmt = con.prepareStatement(deleteQuery);
			stmt.setInt(1,center.getCenter_id());
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
	   public boolean update(CenterDetails center) 
	   {
		   String deleteQuery="update service_center set c_contact=? where center_id=?";
		   Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(deleteQuery);
			stmt.setLong(1,center.getCenter_contact());
			stmt.setInt(2,center.getCenter_id());
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
}
