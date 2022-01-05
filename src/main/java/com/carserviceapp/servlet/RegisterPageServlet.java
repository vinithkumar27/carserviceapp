package com.carserviceapp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carserviceapp.daoimpl.CarCustomerDAOImpl;
import com.carserviceapp.model.CarCustomer;

/**
 * Servlet implementation class carservice
 */
@WebServlet("/carserviceuser12")
public class RegisterPageServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @throws IOException 
	 * @throws ServletException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	   {
		 doGet(request,response);
		   String username=request.getParameter("user");
		   Long mobileno = Long.parseLong(request.getParameter("mob"));
		   String password=request.getParameter("password");
		   String email=request.getParameter("email");
		   String address=request.getParameter("address");
		   CarCustomer obj1 = new CarCustomer(username,mobileno,password,email,address);
		   CarCustomerDAOImpl cust = new CarCustomerDAOImpl();
		   cust.insert(obj1);
		   try {
			response.sendRedirect("LogIn.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
}
