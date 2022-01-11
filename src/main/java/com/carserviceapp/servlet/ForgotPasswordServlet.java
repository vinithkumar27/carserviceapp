package com.carserviceapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carserviceapp.daoimpl.CarCustomerDAOImpl;
import com.carserviceapp.model.CarCustomer;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/forgotpassword")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 HttpSession session =request.getSession();
		 Long mobileno=Long.parseLong(request.getParameter("forgotpassword"));
		 String password=request.getParameter("updatepassword");
		 CarCustomer obj1 = new CarCustomer(mobileno,password);
		 CarCustomerDAOImpl cent = new CarCustomerDAOImpl ();
		 boolean flag = cent.forgotpassword(obj1);
		 System.out.println(flag);
		 if(flag)
		 {
			  session.setAttribute("forgotpass1",true);
			  response.sendRedirect("LogIn.jsp");
		  }
		 
	}

}
