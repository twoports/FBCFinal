/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package memberAdmin;

import AccessDB.DBConnector;

/**
 *
 * @author Jon Neal
 */
public class MemberDBTest {

     public static void main(String[] args) {
        DBConnector db = new DBConnector();
        db.createConnection();
        MemberList member = db.selectAllMembers();
        System.out.println("No of members " + member.size());
        db.closeConnection();
    } 
    
}
