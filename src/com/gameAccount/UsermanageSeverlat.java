package com.gameAccount;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UsermanageSeverlat
 */
@WebServlet("/UsermanageSeverlat")
public class UsermanageSeverlat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
    		
    	
		try {
			int id = (int) request.getSession().getAttribute("uid");
			
            List<User> cusDetail=CoustemerDBUtil.validateUser(id);
			
			request.setAttribute("cusdetails", cusDetail);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		RequestDispatcher rd1=request.getRequestDispatcher("userProfile.jsp");  
        rd1.forward(request, response);
	}

}
