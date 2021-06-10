<%@page import="java.io.PrintWriter"%>
<%@page import="com.gameAccount.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gametune : Online Gaming Site</title>
    <link rel="stylesheet" href="Assests/Styles/style.main.css">

    <link rel="shortcut icon" href="Assests/Images/logo-w.png" type="image/x-icon">
    
    <style type="text/css">
    	.btn-log{
		    text-decoration: none;
		    padding: 12px;
		    margin: 4px 5px;
		    box-sizing: border-box;
		    width: 100px;
		    height: 40px;
		    font-size: 16px;
		    font-family: kmbreg;
		    text-align: center;
		    border: none;
		    color: #fff;
		    border-radius: 5px;
		    background-image: linear-gradient(to right, #0f122b, #182C61,#6D214F, #B33771);
		    background-size: 500% 200%;
		
		    -moz-transition: all .4s ease-in-out;
		    -o-transition: all .4s ease-in-out;
		    -webkit-transition: all .4s ease-in-out;
		    transition: all .4s ease-in-out;
		} 
		
		.btn-log:hover{
		    background-position: 100% 0;
		    -moz-transition: all .4s ease-in-out;
		    -o-transition: all .4s ease-in-out;
		    -webkit-transition: all .4s ease-in-out;
		    transition: all .4s ease-in-out;
		}
    
    </style>
   
</head>
<body>
	
    <div class="anim-bar" id="home"></div>
    <header>
        <div class="logo-position">
            <img src="Assests/Images/logo.svg" alt="" class="logo-image">
        </div>
        <nav>
            <div class="drop-down" href="#">
                <span>Categories</span>
                <div class="dropdown-menu">
                    <ul>
                        <li><a href="GameAccount.jsp">Accounts</a></li>
                        <li><a href="GameBoosting.jsp">Game Boosting</a></li>
                        <li><a href="BidFormPage.jsp">Game Coatches</a></li>
                        <li><a href="BidFormPage.jsp">Games</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="username">
            
            	<% try {
            		
            		int id = (int) request.getSession().getAttribute("uid");%>
            		
            		<span>
                	<% 	String userName = User.getName(id);
                		out.print("@"+userName); %>
	                </span>
	                <form action="logout" method="get" id="logOutF">
	                <button type="submit" class="btn-log">Logout</button>
	                <div id="profile">
	                    <p style="margin-bottom: 10px;">Your Profile Menu</p>
	                    <a href="BidFormPage.jsp" style="position: static; height: 25px; padding: 5px;">Post a Bid Post</a>
	                </div>
	                </form>
            		
            	<% } catch (Exception e) { %>
            		
            		
            		<a href="Login.jsp">Login</a>
                	<a href="#">Register</a>
            		
            	<% } %>
            	
             
            </div>
        </nav>
    </header>
<body>

 <c:forEach var="cust" items="${cusdetails}">
	<c:set  var="id" value="${cust.id}"/>
	<c:set  var="name" value="${cust.name}"/>
	<c:set  var="email" value="${cust.email}"/>
	<c:set  var="phone" value="${cust.phone}"/>
	<c:set  var="pass" value="${cust.password}"/>
 </c:forEach>
<form action="update" method="post">

	ID      :<input type="text" name="id" value="${id}" readonly><br>
	Name    :<input type="text" name="name" value="${name}"><br>
	Email   :<input type="text" name="email" value="${email}"><br>
	Phone   :<input type="text" name="phone" value="${phone}"><br>
	Password:<input type="text" name="pass" value="${pass}"><br>
	<input type="submit" name="submit" value="updatedetail">
	
	</form>
	
</body>
</html>