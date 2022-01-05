package com.carserviceapp.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carserviceapp.connection.*;
import com.carserviceapp.dao.CarPickUpDAO;
import com.carserviceapp.model.*;
public class CarPickUpDAOImpl implements CarPickUpDAO
	{
	   public int insert(CarPickUp pickup) 
	   {
		   String insertQuery="insert into pickup(user_id,cus_name,cus_email,cus_contact,pick_address,center_id) values(?,?,?,?,?,?)";
		   Connection con = null;
		   int i = 0;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(insertQuery);
			stmt.setInt(1,pickup.getUser_id());
			stmt.setString(2,pickup.getC_name());
			stmt.setString(3,pickup.getC_email());
			stmt.setLong(4,pickup.getC_mobile());
			stmt.setString(5,pickup.getPick_address());
			stmt.setInt(6,pickup.getCenter_id());
		   i = 0;
			i = stmt.executeUpdate();
			stmt.close();
			con.close();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	   }
	   public boolean update(CarPickUp pickup)
	   {
	 try {
		  String updateQuery="update pickup set pick_address=? where user_id=?";
		  Connection con =ConnectionUtil.getDBconnection();
		  PreparedStatement stmt = con.prepareStatement(updateQuery);
		  stmt.setString(1,pickup.getPick_address());
		  stmt.setInt(2,pickup.getUser_id());
		  int k =stmt.executeUpdate();
//		  System.out.println(k+" row is updated");
		  stmt.close();
    	  con.close();
		  } catch (SQLException | ClassNotFoundException e)
	           {
				// TODO Auto-generated catch block
				e.printStackTrace();
			   }
		return true;
	   }
	   public boolean delete(CarPickUp pickup)
	   {
		   try {
		   String deleteQuery="delete from pickup where pickup_id=?";
		   Connection con =ConnectionUtil.getDBconnection();
		   PreparedStatement stmt =con.prepareStatement(deleteQuery);
		   stmt.setInt(1,pickup.getPickup_id());
		   int l = stmt.executeUpdate();
		   //System.out.println(l+" row is deleted");
		   stmt.close();
		   con.close();
	   } catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	   }
	   public ResultSet pickupview() 
		{	
			String showQuery="select * from pickup";
			ResultSet rs=null;
			Connection con;
			try {
				con = ConnectionUtil.getDBconnection();
				PreparedStatement pstmt=con.prepareStatement(showQuery);
				rs=pstmt.executeQuery();				
			}  catch (SQLException | ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return rs;
		}
	   public ResultSet admincenterview(CarPickUp admincenter) 
		{
		   ResultSet rs=null;
			String showQuery="select * from pickup where center_id in ?";
			Connection con;
			try {
				con = ConnectionUtil.getDBconnection();
				PreparedStatement pstmt=con.prepareStatement(showQuery);
				pstmt.setInt(1,admincenter.getCenter_id());
				System.out.println(admincenter.getCenter_id());
				rs=pstmt.executeQuery();	
			}  catch (SQLException | ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return rs;
		}
	}
