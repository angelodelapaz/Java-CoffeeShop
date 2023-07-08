<%-- 
    Document   : homepagexmas
    Created on : 11 11, 22, 1:28:15 PM
    Author     : Gelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Java Coffee Shop</title>
        <link rel="stylesheet" href="homepagestylesxmas.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@700&family=Lexend+Deca&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav class="navbar"> 
                <header>
                    <h1>Java Coffee Shop</h1>
                </header>
                <ul name="navigation" class="navlist">
                    <li><a href="${pageContext.request.contextPath}/homepagexmas.jsp" class="navlink">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/menu.jsp" class="navlink">Menu</a></li>
                    <li><a href="${pageContext.request.contextPath}/AboutServlet" class="navlink">About</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section id="startsection">
                <div>
                    <img id="startimg" src="https://logos-world.net/wp-content/uploads/2022/07/Java-Logo.png" alt="java logo">
                </div>
                <div>
                    <h1>DRINK RELAX CODE</h1>
                    <h2><% out.print(getServletContext().getInitParameter("welcomeMessage")); %></h2>
                    <form action="${pageContext.request.contextPath}/HomePageServlet">
                        <input class="xmasbutton" type="submit" name="menu" value="MENU">
                    </form> 
                </div>
            </section>
            <section id="infosection">
                <div id="description">
                    <h1><span>Java Coffee Shop</span></h1>
                    <h3>
                        Java Coffee Shop is a coffee shop which provides a small town experience with big city appeal. The Shop provides an excellent atmosphere to enjoy a great cup of coffee with your friends and family.
                    </h3>
                </div>   
                <div id="info">
                    <div id="opening">
                        <h2>OPENING HOURS</h2>
                        <h3><% out.print(getServletContext().getInitParameter("weekdayHours"));%></h3>
                        <h3><% out.print(getServletContext().getInitParameter("weekendHours"));%></h3>
                    </div>
                    <div id="location">
                        <h2>Our Location</h2>
                        <img src="https://i.stack.imgur.com/HILmr.png" alt="map location">
                        <h3>ADDRESS: 1728 UNION STREET LOS ANGELES, CALIFORNIA </h3>
                    </div>
                </div>
            </section>
        </main>
        <footer>
            <div><button class="button" onclick="window.location.href = 'https://www.facebook.com/StarbucksPhilippines/';">Facebook</button></div>
            <div><button class="button" onclick="window.location.href = 'https://twitter.com/starbucksph';">Twitter</button></div>
            <div><button class="button" onclick="window.location.href = 'https://www.instagram.com/starbucksph/?hl=en';">Instagram</button></div> 
            <div><h2 id="tag">© 2022 Java Coffee. All rights reserved.</h2></div>     
        </footer>
    </body>
</html>
