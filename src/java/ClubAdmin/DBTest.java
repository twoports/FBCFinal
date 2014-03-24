/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ClubAdmin;

import ClubAdmin.ClubList;
import AccessDB.DBConnector;

/**
 *
 * @author Jon Neal
 */
public class DBTest {
     public static void main(String[] args) {
        DBConnector db = new DBConnector();
        db.createConnection();
        ClubList club = db.selectAllClubs();
        System.out.println("No of clubs " + club.size());
        db.closeConnection();
    } 
}
