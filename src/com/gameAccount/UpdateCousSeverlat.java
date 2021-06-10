package com.gameAccount;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gameAccount.CoustemerDBUtil;

/**
 * Servlet implementation class UpdateCousSeverlat
 */
@WebServlet("/UpdateCousSeverlat")
public class UpdateCousSeverlat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String password=request.getParameter("pass");
		
		Boolean isTrue;
		try {
			isTrue=CoustemerDBUtil.updatecoustomer(id, name, phone, email, password);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		isTrue=CoustemerDBUtil.updatecoustomer(id, name, phone, email, password);
		
		
		if(isTrue==true) {
			//RequestDispatcher dis=request.getRequestDispatcher("Succes.jsp");
			System.out.println("Sccesfull update");
		}else {
			System.out.println("Unsccesful");
		}
		
		
	}

}
