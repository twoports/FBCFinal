/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package memberAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberList {
    private ArrayList<MemberDetails> memList ;
    
        public MemberList() {
        this.memList = new ArrayList<MemberDetails>();
    }

    public MemberList(ResultSet rs) {
        this();
        this.memList = new ArrayList<MemberDetails>();
        try {
            while (rs.next()) {
                memList.add(new MemberDetails(rs.getString(1),rs.getString(2),
                        rs.getString(3),rs.getString(4), rs.getString(5),
                        rs.getString(6),rs.getString(7),rs.getString(8), 
                        rs.getString(9)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public MemberDetails retrieveMemberAt(int index) {
        if (index < 0 || index >= memList.size())
            return null;
        else
            return memList.get(index);
    }
    
    public int size() {
        return memList.size();
    }
}
