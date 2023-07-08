package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class AboutServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String geloEmail;
    String natEmail;
    String geloNumber;
    String natNumber;

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        geloEmail = config.getInitParameter("geloEmail");
        natEmail = config.getInitParameter("natEmail");
        geloNumber = config.getInitParameter("geloNumber");
        natNumber = config.getInitParameter("natNumber");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
 /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AboutServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AboutServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             */

            out.print("\n");
            out.print("\n");
            out.print("\n");
            out.print("<!DOCTYPE html>\n");
            out.print("<html lang=\"en\">\n");
            out.print("    <head>\n");
            out.print("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
            out.print("        <meta charset=\"UTF-8\">\n");
            out.print("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
            out.print("        <title>About Us</title>\n");
            out.print("        <link rel=\"stylesheet\" href=\"aboutstyle.css\">\n");
            out.print("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
            out.print("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
            out.print("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
            out.print("        <link href=\"https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@700&family=Lexend+Deca&display=swap\" rel=\"stylesheet\">\n");
            out.print("    </head>\n");
            out.print("    <body>\n");
            out.print("        <header>\n");
            out.print("            <nav class=\"navbar\"> \n");
            out.print("                <header>\n");
            out.print("                    <h1>Java Coffee Shop</h1>\n");
            out.print("                </header>\n");
            out.print("                <ul class=\"navlist\">\n");
            out.print("                    <li><a href=\"");
            out.print("/JavaCoffeeShop/homepage.jsp\" class=\"navlink\">Home</a></li>\n");
            out.print("                    <li><a href=\"");
            out.print("/JavaCoffeeShop/menu.jsp\" class=\"navlink\">Menu</a></li>\n");
            out.print("                    <li><a href=\"");
            out.print("/about.jsp\" class=\"navlink\">About</a></li>\n");
            out.print("                </ul>\n");
            out.print("            </nav>\n");
            out.print("        </header>\n");
            out.print("        <main>\n");
            out.print("            <div id=\"description\">\n");
            out.print("                <h1><span>About Us</span></h1>\n");
            out.print("                <h3>\n");
            out.print("                    The coffee shop project was first initialized by two Computer Science students who envisioned a coffee shop dedicated to all the programmers in the world. \n");
            out.print("                </h3>\n");
            out.print("            </div> \n");
            out.print("            <h2>Developers</h2> \n");
            out.print("            <div id=\"creators\">\n");
            out.print("                <div id=\"gelo\">\n");
            out.print("                    <img src=\"https://thumbs.dreamstime.com/b/welldressed-young-person-pointing-away-25231407.jpg\" alt=\"\">     \n");
            out.print("                    <h2>Angelo Daniel Dela Paz</h2>\n");
            out.print("                    <h2>Email: " + geloEmail + "</h2>");
            out.print("                    <h2>Phone: " + geloNumber + "</h2>");
            out.print("                </div>\n");
            out.print("                <div id=\"nat\">\n");
            out.print("                    <img src=\"https://www.investnational.com.au/wp-content/uploads/2016/08/person-stock.png \" alt=\"\">\n");
            out.print("                    <h2>Nathanael Chris Abrigo</h2>\n");
            out.print("                    <h2>Email: " + natEmail + "</h2>");
            out.print("                    <h2>Phone: " + natNumber + "</h2>");
            out.print("                </div>   \n");
            out.print("            </div> \n");
            out.print("        </main>\n");
            out.print("        <footer>\n");
            out.print("            <div><button onclick=\"window.location.href = 'https://www.facebook.com/StarbucksPhilippines/';\">Facebook</button></div>\n");
            out.print("            <div><button onclick=\"window.location.href = 'https://twitter.com/starbucksph';\">Twitter</button></div>\n");
            out.print("            <div><button onclick=\"window.location.href = 'https://www.instagram.com/starbucksph/?hl=en';\">Instagram</button></div> \n");
            out.print("            <div><h2 id=\"tag\">© 2022 Java Coffee. All rights reserved.</h2></div>     \n");
            out.print("        </footer>\n");
            out.print("    </body>\n");
            out.print("</html>\n");
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
