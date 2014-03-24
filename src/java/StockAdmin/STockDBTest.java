/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package StockAdmin;

import AccessDB.DBConnector;

/**
 *
 * @author Jon Neal
 */
public class STockDBTest {
    public static void main(String[] args) {
        DBConnector db = new DBConnector();
        db.createConnection();
        StockList products = db.selectAllStock();
        System.out.println("No of stock " + products.size());
        db.closeConnection();
    } 
    
}
