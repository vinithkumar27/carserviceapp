package com.carserviceapp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carserviceapp.daoimpl.CenterDetailsDAOImpl;
import com.carserviceapp.model.CenterDetails;

/**
 * Servlet implementation class DeleteServiceCenter
 */
@WebServlet("/deletecenter")
public class DeleteServiceCenter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServiceCenter() {
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
		HttpSession session =request.getSession();
		int centerid = Integer.parseInt(request.getParameter("centerid"));
		CenterDetails obj1 = new CenterDetails(centerid);
		CenterDetailsDAOImpl cent = new CenterDetailsDAOImpl();
		 boolean flag = cent.delete(obj1);
		 if(flag)
		 {
			  session.setAttribute("deletecenter", true);
		       response.sendRedirect("AdminPage.jsp");
		 }
	}

}
