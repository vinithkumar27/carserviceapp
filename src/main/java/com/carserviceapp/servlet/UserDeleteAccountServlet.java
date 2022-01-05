package com.carserviceapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carserviceapp.daoimpl.CarCustomerDAOImpl;
import com.carserviceapp.model.CarCustomer;
@WebServlet("/deleteaccount")
public class UserDeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		long mobileno=Long.parseLong(request.getParameter("mobileno").toString());
		 CarCustomer obj1 = new CarCustomer(mobileno);
		 CarCustomerDAOImpl cent = new CarCustomerDAOImpl();
		 cent.delete(obj1);
		 if(true)
		 {
			 response.sendRedirect("UserDeletePage.jsp");
		 }
	}

}
