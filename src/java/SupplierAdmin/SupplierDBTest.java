/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SupplierAdmin;

import AccessDB.DBConnector;

/**
 *
 * @author Jon Neal
 */
public class SupplierDBTest {
    
    public static void main(String[] args) {
        DBConnector db = new DBConnector();
        db.createConnection();
        SupplierList supplier = db.selectAllSuppliers();
        System.out.println("No of suppliers " + supplier.size());
        db.closeConnection();
    } 
}
