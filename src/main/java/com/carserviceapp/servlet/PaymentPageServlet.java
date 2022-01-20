package com.carserviceapp.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.carserviceapp.daoimpl.BillDetailsDAOImpl;
import com.carserviceapp.daoimpl.CarPaymentDAOImpl;
import com.carserviceapp.daoimpl.CarPickUpDAOImpl;
import com.carserviceapp.model.BillDetails;
import com.carserviceapp.model.CarPayment;
import com.carserviceapp.model.CarPickUp;


@WebServlet("/paymentpage")
public class PaymentPageServlet extends HttpServlet {
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		
		System.out.println("drtfyguhijokl");
		 HttpSession session =request.getSession();
		 int userid=Integer.parseInt(session.getAttribute("userid").toString());
		 
		     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
			int bill_num1=Integer.parseInt(session.getAttribute("bill_num").toString());
			long cardno=Long.parseLong(request.getParameter("cardnum"));
			String holdername=request.getParameter("holdername");
		
				String dateStr = request.getParameter("expdate");
				
			 System.out.println("string : "+dateStr);
			
				Date date = null;
				try {
					date = sdf.parse(dateStr);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("date : "+ sdf.format(date));
			int cvv_no=Integer.parseInt(request.getParameter("cvvno"));
			int amount_paid=Integer.parseInt(request.getParameter("amountpaid"));
			CarPayment obj1 = new CarPayment(bill_num1,cardno,holdername,date,cvv_no,amount_paid);
			CarPaymentDAOImpl cust = new CarPaymentDAOImpl();
			int x=cust.insert(obj1);
				if(x==1)
				{
					BillDetailsDAOImpl bdao = new BillDetailsDAOImpl();
					BillDetails pay = new BillDetails(userid);
					bdao.updatestatus(pay);
					CarPickUpDAOImpl cdao = new CarPickUpDAOImpl();
					double a=15.55;
					CarPickUp picker = new CarPickUp(userid,a);
					cdao.updatepickupstatus(picker);
					response.sendRedirect("UserThanksPage.jsp");
				} 
		 } 
}
