/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.servlet;

import info.diit.controller.MyEntityManager;
import info.diit.entities.Account;
import info.diit.entities.Distribution;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/*all the packages are imported*/

/**
 *
 * @author SaeiD
 */
public class AddDistributionServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            MyEntityManager myEntityManager = new MyEntityManager();
            /*Create an object of MyEntityManager to use the methods like persis and update*/
            Distribution distribution = new Distribution();  
            /*Create an object of Distribution Class to set the for value*/
                        
            distribution.setDistributionCountry(request.getParameter("distributed country"));
            distribution.setDistributionDate(new Date());
            int donationamount = Integer.parseInt(request.getParameter("amount"));
            distribution.setDistributedAmount(donationamount);
            distribution.setDistributedOrg(request.getParameter("organisation"));
            
            myEntityManager.persist(distribution);
            /*All the values are set in distribution objcet*/            
            Account account = myEntityManager.getEntityManager().find(Account.class, 1);
            account.setBalance(account.getBalance() - donationamount);            
            myEntityManager.update(account);
            /*contribution objcet has been persisted and account object is updated*/
            HttpSession session = request.getSession();
            session.setAttribute("distribution", distribution);
            response.sendRedirect("adminsuccess.jsp");  
            /*after all a session of distribution attribute is set and redirect to the adminsuccess.jsp page*/
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
