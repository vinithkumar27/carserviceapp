package com.carserviceapp.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.carserviceapp.connection.*;
import com.carserviceapp.dao.ServiceDetailsDAO;
import com.carserviceapp.model.*;

public class ServiceDetailsDAOImpl implements ServiceDetailsDAO
{
	 public boolean insert(ServiceDetails details)

	   {
		   String insertQuery="insert into service_details(user_id,service_id) values(?,?)";
		   Connection con = null;
		try {
			con = ConnectionUtil.getDBconnection();
		   PreparedStatement stmt = null;
			stmt = con.prepareStatement(insertQuery);
			stmt.setInt(1,details.getUser_id());
			stmt.setInt(2,details.getService_id());
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

	 public List<ServiceDetails> view() 
		{
			List<ServiceDetails> servicedetaList=new ArrayList<ServiceDetails>();
			
			String showQuery="select detail_id,user_id,service_id from service_details";
			Connection con;
			try {
				con = ConnectionUtil.getDBconnection();
				PreparedStatement stmt=con.prepareStatement(showQuery);
				ResultSet rs=stmt.executeQuery(showQuery);
				while(rs.next())
				{
					//serviceDetails servicedet=new serviceDetails(rs.getInt(1),rs.getInt(2),rs.getInt(3));
					//servicedetaList.add(servicedet);
				}
				
			}  catch (SQLException | ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return servicedetaList;
		}
	 public boolean delete(ServiceDetails service)
	   {
		   try {
		   String deleteQuery="delete from service_details where service_id=?";
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
}
