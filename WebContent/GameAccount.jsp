<%@page import="java.io.PrintWriter"%>
<%@page import="com.gameAccount.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gametune : Online Gaming Site</title>
    <link rel="stylesheet" href="Assests/Styles/style.main.css">
    <link rel="stylesheet" href="Styles/style.sub.css">
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
  	
    <div class="main__jumbotron__warpper__left ">
        <div class="p">
        <img alt="" src="./Images/Account/wallpaperflare.com_wallpaper.jpg" class="postback">
        <h1 class="main__jumbotron__warpper__title pont-withe">LEADING MARKETPLACE FOR GAMERS</h1>
            <a href="SellAccountFrom.jsp"><button class="sell-btn"id="sell" >I Want to Sell My Games Account</button></a>
            <a href="BuyAccount.jsp"><button class="sell-btn"id="buy">I Want to Buy Other Games Account</button></a>
            <br><br>
            <form action="buttonClic" method="post">
            <button type="submit"  class="sell-btn"id="buy" >I Want to See My  Profile</button><br>
            </form>
            <br>
            <br>
            <br>
            <p class="pont-withe">Trade securely with gamers throughout the world.</p><br>
        </div>
    </div>
    
    

        
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