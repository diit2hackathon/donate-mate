/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.controller;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.sql.DataSource;
import javax.transaction.UserTransaction;
/*all the packages are imported*/

/**
 *
 * @author SaeiD
 */
public class MyEntityManager {
    Context ctx;
    UserTransaction utx;
    EntityManager em;
    /*Create call and declare the objects*/

    public MyEntityManager() {
        try {
            ctx = new InitialContext();
            utx = (UserTransaction) ctx.lookup("java:comp/env/UserTransaction");
            em = (EntityManager) ctx.lookup("java:comp/env/persistence/LogicalName");
        } catch (NamingException ex) {
            Logger.getLogger(MyEntityManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        /*Create constructor of the class and make objects*/
    }
    

    public EntityManager getEntityManager() {
        return em;
    }
    
    public Connection getDatabaseConnection()
    /*create database conncetion with the hopecenter*/
    {
        Connection con = null;
        try {
            
            DataSource dataSource = (DataSource)ctx.lookup("jdbc/hopecenter");
            con = dataSource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(MyEntityManager.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(MyEntityManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
        /*return the con object with established connection status*/
    }

    public void persist(Object object) {
        /* Add this to the deployment descriptor of this module (e.g. web.xml, ejb-jar.xml):
         * <persistence-context-ref>
         * <persistence-context-ref-name>persistence/LogicalName</persistence-context-ref-name>
         * <persistence-unit-name>HopeCenterPU</persistence-unit-name>
         * </persistence-context-ref>
         * <resource-ref>
         * <res-ref-name>UserTransaction</res-ref-name>
         * <res-type>javax.transaction.UserTransaction</res-type>
         * <res-auth>Container</res-auth>
         * </resource-ref> */
        try {            
            utx.begin();            
            em.persist(object);
            utx.commit();
            /*user transaction begins and try to persist*/
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }   
    public void update(Object object) {
        
        try {            
            utx.begin();            
            em.merge(object);
            utx.commit();
        } catch (Exception e) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", e);
            throw new RuntimeException(e);
        }
    }    
}
