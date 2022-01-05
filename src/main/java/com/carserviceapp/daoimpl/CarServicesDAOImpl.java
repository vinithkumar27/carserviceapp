package com.carserviceapp.daoimpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.carserviceapp.connection.*;
import com.carserviceapp.dao.CarServicesDAO;
import com.carserviceapp.model.*;
public class CarServicesDAOImpl implements CarServicesDAO
{
	   public boolean insert(CarServices service)
	   {
		   String insertQuery="insert into services(service_name,service_cost,service_desc) values(?,?,?)";
		   Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(insertQuery);
			stmt.setString(1,service.getService_name());
			stmt.setInt(2,service.getService_cost());
			stmt.setString(3,service.getService_desc());
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
	   public boolean update(CarServices service) 
	   {
		  String updateQuery="update services set service_cost=? where service_id=?";
		  Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		  PreparedStatement stmt = null;
			stmt = con.prepareStatement(updateQuery);
			stmt.setInt(1,service.getService_cost());
			stmt.setInt(2,service.getService_id());
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
	   public boolean delete(CarServices service)
	   {
		   try {
		   String deleteQuery="delete from services where service_id=?";
		   Connection con =ConnectionUtil.getDBconnection();
		   PreparedStatement stmt =con.prepareStatement(deleteQuery);
		   stmt.setInt(1,service.getService_id());
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
	   public ResultSet view() 
		{
			ResultSet rs=null;
			String showQuery="select service_name,service_cost,service_desc,service_id from services";
			Connection con;
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
	}
