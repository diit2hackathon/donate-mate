/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.controller;

/**
 *
 * @author SaeiD
 */
public class Report {
    
    private static MyEntityManager myEntityManager = new MyEntityManager();
    /*Create an object of MyEntityManager to use the methods*/        
    public static Integer getAvailableFund()
    {
        Integer balance = (Integer)myEntityManager.getEntityManager().createNativeQuery("select balance from account").getSingleResult();
        return balance;
        /*crate query to fetch the account balance and return balance*/
    }
    
}
