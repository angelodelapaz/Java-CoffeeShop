<%-- 
    Document   : menu
    Created on : 11 10, 22, 3:50:22 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Menu</title>
        <link rel="stylesheet" href="menustyles.css" />
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

        <div id="menutitle">
            <h1>MENU</h1>
        </div>
        <section id="menusection">
            <form action="${pageContext.request.contextPath}/CheckOutServlet">
                <div class="item" id="espresso">
                    <h2>Espresso</h2>
                    <h3>Single or Double Shot</h3>
                    <h2>100.00</h2>
                    <input name="espresso" class="amount" type="number" min="0" value="0" />
                </div>
                <div class="item" id="americano">
                    <h2>Americano</h2>
                    <h3>Espresso mixed with hot water</h3>
                    <h2>110.00</h2>
                    <input name="americano" class="amount" type="number" min="0" value="0" />
                </div>
                <div class="item" id="latte">
                    <h2>Latte</h2>
                    <h3>Espresso mixed with steamed milk</h3>
                    <h2>120.00</h2>
                    <input name="latte" class="amount" type="number" min="0" value="0" />
                </div>
                <div class="item" id="cappucino">
                    <h2>Cappucino</h2>
                    <h3>Espresso mixed with steamed milk and foam layer</h3>
                    <h2>120.00</h2>
                    <input name="cappucino" class="amount" type="number" min="0" value="0"/>
                </div>
                <div class="item" id="macchiato">
                    <h2>Macchiato</h2>
                    <h3>Espresso mixed with a dollop of milk foam</h3>
                    <h2>120.00</h2>
                    <input name="macchiato" class="amount" type="number" min="0" value="0"/>
                </div>
                <input type="submit" class="button" value="Check Out">
            </form>
        </section>
        <footer>
            <div><button onclick="window.location.href = 'https://www.facebook.com/StarbucksPhilippines/';">Facebook</button></div>
            <div><button onclick="window.location.href = 'https://twitter.com/starbucksph';">Twitter</button></div>
            <div><button onclick="window.location.href = 'https://www.instagram.com/starbucksph/?hl=en';">Instagram</button></div> 
            <div><h2 id="tag">© 2022 Java Coffee. All rights reserved.</h2></div>     
        </footer>
    </body>
</html>
