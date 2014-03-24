/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DonationAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jon Neal
 */
public class DonationList {
      private ArrayList<DonationDetails> donList ;
    
        public DonationList() {
        this.donList = new ArrayList<DonationDetails>();
    }

    public DonationList(ResultSet rs) {
        this();
        this.donList = new ArrayList<DonationDetails>();
        try {
            while (rs.next()) {
                donList.add(new DonationDetails(rs.getString(1),rs.getDouble(2),
                        rs.getString(3),rs.getInt(4)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public DonationDetails retrieveDonationAt(int index) {
        if (index < 0 || index >= donList.size())
            return null;
        else
            return donList.get(index);
    }
    
    public int size() {
        return donList.size();
    }
}
