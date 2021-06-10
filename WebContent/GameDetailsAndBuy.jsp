<%@page import="java.io.PrintWriter"%>
<%@page import="com.gameAccount.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game details</title>
    <link rel="stylesheet" href="Assests/Styles/style.main.css">
    <link rel="stylesheet" href="Assests/Styles/page.css">

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
    
   <img alt="" src="Assests/Images/Games/${i.thumbnail}" class="postback">
    
    	<div class="content back-pattern" style="justify-content: space-around; display: flex;">

	
			<div class="postcont">
				<p class="game"><i class="fas fa-gamepad">&nbsp;&nbsp;</i>${i.game}</p>
				<h2>${i.title}</h2>
				<h3>${i.subTitle}</h3>
				<p id="descriptionTag">${i.bidDescription}</p>
				<ul>
					<li><i class="fas fa-desktop">&nbsp;</i> ${i.platform}</li>
					<li><i class="fas fa-chart-line">&nbsp;</i> Levels up ${i.lbFrom} to ${i.lbTo}</li>
					<li><i class="fas fa-dollar-sign">&nbsp;&nbsp;&nbsp;</i> Maximum bid : LKR. ${i.maxBid}</li>
					<li><i class="fas fa-clock">&nbsp;</i> Bid ends on ${i.bidEnd}</li>
				</ul>
				<p>Post by <b>${i.uid}</b></p>
			
			
		
	        
	        <form action="insertbid" class="bid-form" method="post">
	        	<input type="text" name="bidId" value="${i.id}" style="display: none;">
	        	<input type="text" class="s" name="price" placeholder="LKR">
	        	<input type="text" class="l" name="comment" placeholder="Comment">
	        	<input type="submit" class="inp-btn" value="Place Bid">
	        </form>
	        
	        <div class="bid-comment-body">
	        	 
	        	 <c:forEach var="b" items="${bids}">
	        	<div class="bid-comment">
	        		<span class="com-name">@${b.uname}</span>
	        		<table class="com-comment-table">
	        		<tr>
	        			<td class="com-comment">${b.comment}</td>
	        			<td class="com-bid">${b.price}</td>
	        		</tr>
	        		</table>
	        	</div>
	        	</c:forEach>
	        </div>
	        
	        
	        
	        </div>
    	</div> 

</body>
</html>