/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package StockAdmin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Jon Neal
 */
public class StockList {
    
     private ArrayList<StockDetails> stockList;

    public StockList() {
        stockList = new ArrayList<StockDetails>();
    }

    public StockList(ResultSet rs) {
        this();
        this.stockList = new ArrayList<StockDetails>();
        try {
            while (rs.next()) {
                stockList.add(new StockDetails(rs.getString(1), 
                        rs.getString(2),rs.getString(3),rs.getInt(4), rs.getDouble(5), 
                        rs.getDouble(6),rs.getString(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public StockDetails retrieveStockat(int index) {
        if (index < 0 || index >= stockList.size())
            return null;
        else
            return stockList.get(index);
    }
    
    public int size() {
        return stockList.size();
    }
}


