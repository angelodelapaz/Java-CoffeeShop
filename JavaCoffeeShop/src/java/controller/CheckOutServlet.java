package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import model.CheckOutExpert;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class CheckOutServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            request.getContextPath();
            String espresso = request.getParameter("espresso");
            String americano = request.getParameter("americano");
            String latte = request.getParameter("latte");
            String cappucino = request.getParameter("cappucino");
            String macchiato = request.getParameter("macchiato");

            String[] order = {espresso, americano, latte, cappucino, macchiato};
            String[] name = {"Espresso", "Americano", "Latte   ", "Cappucino", "Macchiato"};
            CheckOutExpert coe = new CheckOutExpert();
            boolean validInput = false;
            validInput = coe.inputValidation(validInput, order);

            if (validInput = coe.inputValidation(validInput, order) == false) {
                //response.sendRedirect("error403.jsp");
                response.sendError(500);
            }
            List<Integer> orderList = coe.getOrder(order);
            int payment = coe.totalOrder(orderList);
           
            int total = coe.totalOrder(orderList);
            
            Iterator<Integer> it = orderList.iterator();
            List<Integer> quantity = new ArrayList<Integer>();
            List<Integer> price = new ArrayList<Integer>();

            //out.print("<br>" + it.next());
            //initialize
            while (it.hasNext()) {

                quantity.add(it.next());
                price.add(it.next());
            }

            String receipt = "ITEM\t\t   QUANTITY\t\t    PRICE\n";
            for (int i = 0; i < order.length; i++) {
                receipt = receipt + name[i] + "\t\t" + quantity.get(i) + "\t\t\tPHP" + price.get(i) + ".00\n";
            }
            receipt = receipt + "TOTAL PRICE:\tPHP" + total + ".00\n";

            if (payment != 0) {
                request.setAttribute("payment", payment);
                request.setAttribute("orderList", orderList);
                request.getSession().setAttribute("receipt", receipt);
                RequestDispatcher view = request.getRequestDispatcher("checkout.jsp");
                view.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("/errorOrder.jsp");
                rd.include(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
