<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="com.gameAccount.sellAccountDB"%>
<%@page import="com.gameAccount.SellGAccount"%>
<%@page import="com.gameAccount.SellaccountSeverlat"%>
<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="Styles/style.main.css">
    <link rel="stylesheet" href="Styles/style.sub.css">

    <script src="Js/script.main.js"></script>

    <link rel="shortcut icon" href="Images/logo-w.png" type="image/x-icon">
</head>
<body>
    <div class="anim-bar" id="home"></div>
    <header class="nav-anim-bar">
        <div class="logo-position">
            <img src="Images/logo-w.png" alt="" class="logo-image">
        </div>
        <nav>
            <div class="drop-down" href="#" style="border: 2px solid #fff;">
                <span style="color: #fff;">Categories</span>
                <div class="dropdown-menu">
                    <ul>
                        <li>Accounts</li>
                        <li>Game Boosting</li>
                        <li>Game Coatches</li>
                        <li>Games</li>
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
   
 

  <div class="content">
      <div class="account-post">
          <div class="cont-one">
            <br>17 YEAR OLD ACCOUNT| SEPT 2003 -Month of steam release|<br> 8 GAMES |10 YEAR COIN & 5 YEAR COIN IN CSGO|<br> ORIGINAL EMAIL| CHEAP| INSTANT DELIEVRY| NO P<br><br>
          </div>
          <div class="cont-two">
              <p>2020-10-20</p>
          </div>
          <div class="cont-three">
              <div class="vote-star"></div>
          </div>
          <div class="cont-four">
            <p>$ 26.97</p>
          </div>
          <div class="cont-five">
            <button class="buttonBuy">
                Buy
            </button>
          </div>
      </div>
  </div>
  
  <%
  	
  	List<SellGAccount> g = sellAccountDB.allgame();
  	for(SellGAccount i : g) { %>
  		
  	
  
    <div class="content">
      <div class="account-post">
          <div class="cont-one">
            <br><% out.print(i.getgDetail()); %><br><br>
          </div>
          <div class="cont-two">
              <p> <% out.print(i.getDate()); %></p>
          </div>
          <div class="cont-three">
              <div class="vote-star"></div>
          </div>
          <div class="cont-four">
            <p><% out.print(i.getPrice()); %></p>
          </div>
          <div class="cont-five">
            <button class="buttonBuy">
                Buy
            </button>
          </div>
      </div>
  </div>
  	
   

<% } %>
        
    <div class="footer-top">
        <ul>
            <li><a href=""><img src="Images/facebook.svg" alt=""></a><a href=""><img src="Images/twitter.svg" alt=""></a></li>
        </ul>
        <ul>
            <li>About Us</li>
            <li>Privacy & Policies</li>
        </ul>
        <ul>
            <li>Help</li>
            <li>Contact Us</li>
        </ul>
        <ul>
            <li>About Us</li>
            <li>New</li>
        </ul>
    </div>
    <div class="anim-bar"></div>
    <footer>
        <div class="footer-left">
            <p class="description">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias, dolorem eveniet excepturi quibusdam esse nobis cumque obcaecati veritatis iure consectetur non voluptatem soluta ullam ut explicabo dolores, blanditiis deleniti pariatur quos architecto debitis quo! Officia repudiandae, deserunt consequatur iste distinctio reiciendis sequi inventore sit vitae facilis nulla, veritatis quos quia.
            </p>
        </div>
        <div class="footer-right">
            <img class="logo-white" src="Images/logo-w.png" alt="">
            <p class="copyright">&copy; 2020 by SLIIT Assignment Group</p>
        </div>
    </footer>

    <a href="#home"><div class="top-scroll-btn"><img src="Images/top_scroll_icon..png" alt=""></div></a>

    <div id="message-box">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem earum voluptates dolorem nesciunt iure maxime iste vel sapiente, quo quam.</p>
        <button type="submit">Accept</button>
    </div>
</body>
</html>