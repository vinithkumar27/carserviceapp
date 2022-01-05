package com.carserviceapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.carserviceapp.daoimpl.*;
import com.carserviceapp.model.*;

/**
 * Servlet implementation class UpdateService
 */
@WebServlet("/updateservice")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateService() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 int serviceid=Integer.parseInt(request.getParameter("serviceid"));
		 int newprice=Integer.parseInt(request.getParameter("updateservcost"));
		 CarServices obj1 = new CarServices(serviceid,newprice);
		 CarServicesDAOImpl cent = new CarServicesDAOImpl ();
		 cent.update(obj1);
		 if(true)
		   {
			   response.sendRedirect("AdminPage.jsp");
		   }
	}
	

}
