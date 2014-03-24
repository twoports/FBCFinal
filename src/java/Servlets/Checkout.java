package Servlets;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



import OrderAdmin.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Checkout extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String buttonClicked = request.getParameter("button");
        HttpSession session = request.getSession(false);
        Order order = (Order)(session.getAttribute("order"));

        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Food Bank Club</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"D0CFFD\">"
                    + "<font face=\"comic sans ms\"/>");

            if (buttonClicked.equals("Pay")) {
                out.println("<h3>Checkout</h3><hr><br>");
                out.println("Order confirmed - estimated delivery date: " +
                        "1st April 2020<br><br>");
                order.emptyOrder();
                out.println("<a href=\"Orders/ClubAddOrder.jsp\">Continue shopping</a>");
            }

            else if (buttonClicked.equals("Continue shopping"))
                response.sendRedirect("ListOfProducts.jsp");

            else if (buttonClicked.equals("Empty order")) {
                out.println("<h3>Empty ordert</h3><hr><br>");
                order.emptyOrder();
                out.println("<h3>Your cart is now empty</h3><br><br>");
                out.println("<a href=\"ListOfProducts.jsp\">Continue shopping</a>");
            }
            
            out.println("</font> </body>");
            out.println("</html>");
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
