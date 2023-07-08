<%-- 
    Document   : checkout
    Created on : 11 10, 22, 3:51:23 PM
    Author     : User
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkout</title>
        <link rel="stylesheet" href="checkoutstyles.css">
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
                <ul class="navlist">
                    <li><a href="${pageContext.request.contextPath}/homepage.jsp" class="navlink">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/menu.jsp" class="navlink">Menu</a></li>
                    <li><a href="${pageContext.request.contextPath}/AboutServlet" class="navlink">About</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <h1 class="title">CHECKOUT</h1>
            <section>
                <h2 class="subtitle">
                    Your Order
                    (<% Date date = (Date) getServletContext().getAttribute("date");
                        request.getSession().setAttribute("datetoday", date);
                        out.print(date);
                    %>)
                </h2>



                <section class="container">
                    <div class="category">
                        <h2>Item</h2>
                        <h2>Espresso</h2>
                        <h2>Americano</h2>
                        <h2>Latte</h2>
                        <h2>Cappucino</h2>
                        <h2>Latte</h2>
                    </div>
                    <div class="category">
                        <h2>Quantity</h2>
                        <%
                            List<Integer> orderList = (List<Integer>) request.getAttribute("orderList");
                            Iterator<Integer> it = orderList.iterator();
                            List<Integer> quantity = new ArrayList<Integer>();
                            List<Integer> price = new ArrayList<Integer>();

                            //out.print("<br>" + it.next());
                            //initialize
                            while (it.hasNext()) {

                                quantity.add(it.next());
                                price.add(it.next());
                            }

                            Iterator<Integer> itTwo = quantity.iterator();
                            while (itTwo.hasNext()) {

                                out.print("<h2>" + itTwo.next() + "</h2>");
                            }
                        %>
                    </div>
                    <div class="category">
                        <h2>Price</h2>
                        <%
                            Iterator<Integer> itThree = price.iterator();
                            while (itThree.hasNext()) {

                                out.print("<h2>" + itThree.next() + "</h2>");
                            }
                        %>
                    </div>
                </section>
                <h2 class="total">Total: PHP<%
                    int totalPayment = (Integer) request.getAttribute("payment");
                    out.print(totalPayment);
                    %>.00
                </h2>
                <button><a href="${pageContext.request.contextPath}/ReturnHomeServlet">HOME</a></button>              
                <button><a href="${pageContext.request.contextPath}/ReceiptServlet">RECEIPT</a></button>      
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

