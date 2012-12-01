/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.servlet;

import info.diit.controller.MyEntityManager;
import info.diit.entities.Account;
import info.diit.entities.ContactableContributor;
import info.diit.entities.Contribution;
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
public class AddContributionServlet extends HttpServlet {

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
            Contribution contribution = new Contribution();
            /*Create an object of Contributor Class to set the for value*/
            contribution.setCountryName(request.getParameter("country"));
            
            contribution.setContributionDate(new Date());
            int donationamount = Integer.parseInt(request.getParameter("donationAmount"));
            contribution.setContributionAmount(donationamount);
            contribution.setPaymentMethod(request.getParameter("donation method"));
            
            /*All the values are set in contribution objcet*/
            
            myEntityManager.persist(contribution);
            Account account = myEntityManager.getEntityManager().find(Account.class, 1);
            account.setBalance(account.getBalance() + donationamount);            
            myEntityManager.update(account);
            
            /*contribution objcet has been persisted and account object is updated*/
            
            String opt = request.getParameter("option");
            //System.out.println("option i press in the form +++++++++++++++++"+opt);
                                                
            if(opt.equals("yes"))/*donor opinion is been checking yes or no*/
            {
                ContactableContributor contactcontributor = new ContactableContributor();
                                
                contactcontributor.setContributorName(request.getParameter("donor name"));
                contactcontributor.setMailAddress(request.getParameter("donor address"));
                contactcontributor.setEmailAddress(request.getParameter("donor email"));
                contactcontributor.setContactNo(Integer.parseInt(request.getParameter("contact no")));
                contactcontributor.setContributionId(contribution);
                /*after checking opinion contactable contributors values is been set in the object*/                
                myEntityManager.persist(contactcontributor);/*contactcontributor objcet has been persisted*/             
            }
           
            HttpSession session = request.getSession();
            session.setAttribute("contribution", contribution);
            response.sendRedirect("success.jsp"); 
            /*after all a session of contribution attribute is set and redirect to the success.jsp page*/
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
