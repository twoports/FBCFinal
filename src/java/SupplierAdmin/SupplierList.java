/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SupplierAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Jon Neal
 */
public class SupplierList {
   
    private ArrayList<SupplierDetails> suppList ;
    
        public SupplierList() {
        this.suppList = new ArrayList<SupplierDetails>();
    }

    public SupplierList(ResultSet rs) {
        this();
        this.suppList = new ArrayList<SupplierDetails>();
        try {
            while (rs.next()) {
                suppList.add(new SupplierDetails(rs.getString(1),rs.getString(2),
                        rs.getString(3),rs.getString(4), rs.getString(5),
                        rs.getString(6),rs.getString(7),rs.getString(8), 
                        rs.getString(9),rs.getString(10)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public SupplierDetails retrieveSupplierAt(int index) {
        if (index < 0 || index >= suppList.size())
            return null;
        else
            return suppList.get(index);
    }
    
    public int size() {
        return suppList.size();
    }
    }

