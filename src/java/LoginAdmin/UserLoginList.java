/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package LoginAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author MacBootCamp
 */
public class UserLoginList {
    
    private ArrayList<UserLoginDetails> userList ;
    
        public UserLoginList() {
        this.userList = new ArrayList<UserLoginDetails>();
    }

    public UserLoginList(ResultSet rs) {
        this();
        this.userList = new ArrayList<UserLoginDetails>();
        try {
            while (rs.next()) {
                userList.add(new UserLoginDetails(rs.getString(1),rs.getString(2),
                        rs.getString(3)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public UserLoginDetails retrieveUserAt(int index) {
        if (index < 0 || index >= userList.size())
            return null;
        else
            return userList.get(index);
    }
    
    public int size() {
        return userList.size();
    }
    
    
}
