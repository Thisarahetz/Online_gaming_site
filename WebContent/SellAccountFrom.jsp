<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gametune : Online Gaming Site</title>
    <link rel="stylesheet" href="Styles/style.main.css">
    <link rel="stylesheet" href="Styles/style.sub.css">

    <script type="text/javascript" src="/JS/script_main.js"></script>

    <link rel="shortcut icon" href="/Images/logo-w.png" type="image/x-icon">
</head>
<body>
    <div class="anim-bar" id="home"></div>
    <header class="nav-anim-bar">
        <div class="logo-position">
            <img src="/Images/logo-w.png" alt="" class="logo-image">
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
                <!-- <a href="#">Login</a>
                <a href="#">Register</a> -->

                <!-- OR -->

                <span>@MyUsername123</span>
                <a href="#">Logout</a>
                <div id="profile">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem earum voluptates dolorem nesciunt iure maxime iste vel sapiente, quo quam.</p>
                </div>
            </div>
        </nav>
    </header>
    <div class="content">

        <div class="top-g-title">
            <img src="Images/sheild-icon.png" alt="" class="icon">
            <p class="icon-title">Sell game Accounts Form</p>
        </div>


        <form action="insert" method="post">
            <table>
                <tr><td>Game Details</td><td><input type="text" name="detail" id="Title" class="half" ></td>
                  <td>GAme Screan shot</td>   
                  <td><input type="file" name="Screenshot"/></td>
                  
                </tr>
                <tr><td>Leval</td><td><input type="text" name="leval" id="Leval" class="half"></td></tr>
                <tr><td>Description</td><td><textarea name="description" id="Description" cols="66" rows="20" class="half h300" required></textarea></td></tr>
                <tr><td>Phone Number</td><td><input type="text" name="number" id="number" class="half"></td></tr>
                    <tr><td> Date </td><td><input type="date" name="date" id="date" class="qtr" required></td></tr>
                    <td>Game</td>
                    <td>
                        <select class="half" id="Game" name="Game" required>
                            <option value="1">PUBG - Player Unknown's Battle Ground</option>
                            <option value="2">PUBG - Player Unknown's Battle Ground [Mobile]</option>
                        </select>
                    </td>
                    <td rowspan="6">
                        
                    </td>
                </tr>
                <tr>
                    <td>Platform</td>
                    <td>
                        <select class="qtr" id="Platform" name="Platform" required>
                            <option value="Windows">Windows</option>
                            <option value="MacOS">MacOS</option>
                            <option value="Linux">Linux</option>
                            <option value="Android">Android</option>
                            <option value="IOS">IOS</option>
                        </select>
                    </td>
                </tr>
                <tr><td> Price </td>
                    <td><input type="text" name="price" id="price" class="qtr" placeholder="LKR" required></td>
                </tr>
                
                <tr><td></td><td><input type="checkbox" name="" id="" value="" required><span>I accept for the agreement</span></td></tr>
                <tr><td></td><td><button type="submit" name="Submit" value="Sellaccount">Submit</button></tr>
            </table>
        </form>
    </div>
    <div class="footer-top">
        <ul>
            <li><a href=""><img src="Assests/Images/facebook.svg" alt=""></a><a href=""><img src="Assests/Images/twitter.svg" alt=""></a></li>
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
            <img class="logo-white" src="Assests/Images/logo-w.png" alt="">
            <p class="copyright">&copy; 2020 by SLIIT Assignment Group</p>
        </div>
    </footer>

    <a href="#home"><div class="top-scroll-btn"><img src="Assests/Images/top_scroll_icon..png" alt=""></div></a>

    <div id="message-box">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem earum voluptates dolorem nesciunt iure maxime iste vel sapiente, quo quam.</p>
        <button type="submit">Accept</button>
    </div>
</body>
</html>