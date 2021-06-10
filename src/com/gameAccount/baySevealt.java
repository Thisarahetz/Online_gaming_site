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
 * Servlet implementation class baySevealt
 */
@WebServlet("/baySevealt")
public class baySevealt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id1=request.getParameter("id");
		int id=Integer.parseInt(id1);
		System.out.println(id1);
		
		try {
			List<SellGAccount> bayGame=BuyDBUtil.buyAcc(id);
			request.setAttribute("bayGame", bayGame);
			
			RequestDispatcher gamenew=request.getRequestDispatcher("GameDetailsAndBuy.jsp");
			gamenew.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
	}

}
