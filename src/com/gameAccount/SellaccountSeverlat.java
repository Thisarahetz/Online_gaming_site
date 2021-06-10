package com.gameAccount;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SellaccountSeverlat
 */
@WebServlet("/SellaccountSeverlat")
public class SellaccountSeverlat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellaccountSeverlat() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * RequesDispatcher dis=request.getRequestDispatcher("name.jsp");
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nameCus = "demo";
		String gameDetail = request.getParameter("detail");
		String number=request.getParameter("number");
		String Description=request.getParameter("description");
		String leval=request.getParameter("leval");
	    
	    String date=request.getParameter("date");
	    String gameName = request.getParameter("Game");
	    String flatForm = request.getParameter("Platform");
	    String price= request.getParameter("price");
	    String filepath="c://destop";
	    
	    boolean my;
	    my=sellAccountDB.insertGAccount(nameCus, gameDetail, number, leval, Description, date, gameName, flatForm, price,filepath);
	    
	    if(my==true) {
	    	//System.out.println("Data Insert Succesfull!!!");
	    	RequestDispatcher dis=request.getRequestDispatcher("GameAccount.jsp");
	    	dis.forward(request, response);
	    }else {
	    	System.out.println("Unsusesfull aa ");
	    }
	    
		//doGet(request, response);
	}

}
