/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ClubAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jon Neal
 */
    public class ClubList{
    private ArrayList<ClubDetails> clubList ;
    
        public ClubList() {
        this.clubList = new ArrayList<ClubDetails>();
    }

    public ClubList(ResultSet rs) {
        this();
        this.clubList = new ArrayList<ClubDetails>();
        try {
            while (rs.next()) {
                clubList.add(new ClubDetails(rs.getString(1),rs.getString(2),
                        rs.getString(3),rs.getString(4), rs.getString(5),
                        rs.getString(6),rs.getString(7),rs.getString(8), 
                        rs.getString(9),rs.getString(10)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ClubDetails retrieveClubAt(int index) {
        if (index < 0 || index >= clubList.size())
            return null;
        else
            return clubList.get(index);
    }
    
    public int size() {
        return clubList.size();
    }
}
