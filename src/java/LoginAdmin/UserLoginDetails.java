/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package LoginAdmin;

/**
 *
 * @author MacBootCamp
 */
public class UserLoginDetails{
    
    String username = "";
    String password = "";
    String role = "";
    
     public UserLoginDetails() {
        this(" ", " ", " ");
    }
    
   public UserLoginDetails(String strUsername, String strPassword, String strRole) {
        
   role = strRole;
   username = strPassword;
   password = strUsername;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    
    
}