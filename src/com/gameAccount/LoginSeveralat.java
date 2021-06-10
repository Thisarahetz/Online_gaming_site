package com.gameAccount;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gameAccount.CoustemerDBUtil;
import com.gameAccount.User;

/**
 * Servlet implementation class LoginSeveralat
 */
@WebServlet("/LoginSeveralat")
public class LoginSeveralat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("un");
		String pwd = request.getParameter("pw");
		int id = User.validateUser(uname, pwd);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		if( id >= 0) {
			HttpSession session = request.getSession();
			session.setAttribute("uid", id);
			
			String userName = User.getName(id);
			System.out.println(userName);
			request.setAttribute("user", userName);
			
			
			RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");  
	        rd.forward(request,response);
		
	        
	         
		}
		else {
			
			RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");  
	        rd.forward(request,response); 
		}
		
	}

		
	

}
