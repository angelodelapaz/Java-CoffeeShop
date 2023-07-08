<%-- 
    Document   : error500
    Created on : 11 10, 22, 3:53:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="errorstyles.css">
        <title>500 Error Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@700&family=Lexend+Deca&display=swap"
            rel="stylesheet"
            />
    </head>
    <body>
        <header>
            <nav class="navbar"> 
                <header>
                    <h1>Java Coffee Shop</h1>
                </header>
                <ul class="navlist">
                    <li><a href="${pageContext.request.contextPath}/homepage.jsp" class="navlink">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/menu.jsp" class="navlink">Menu</a></li>
                    <li><a href="${pageContext.request.contextPath}/AboutServlet" class="navlink">About</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section id="errortext">
                <h1>500</h1>
                <h2>Server Error</h2>
            </section>
        </main>   
        <footer>
            <div><button onclick="window.location.href = 'https://www.facebook.com/StarbucksPhilippines/';">Facebook</button></div>
            <div><button onclick="window.location.href = 'https://twitter.com/starbucksph';">Twitter</button></div>
            <div><button onclick="window.location.href = 'https://www.instagram.com/starbucksph/?hl=en';">Instagram</button></div> 
            <div><h2 id="tag">© 2022 Java Coffee. All rights reserved.</h2></div>     
        </footer>
    </body>
</html>