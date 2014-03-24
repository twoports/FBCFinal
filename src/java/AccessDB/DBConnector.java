package AccessDB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import LoginAdmin.*;
import ClubAdmin.*;
import DonationAdmin.DonationDetails;
import DonationAdmin.DonationList;

import StockAdmin.*;
import SupplierAdmin.*;
import java.sql.Statement;

import memberAdmin.*;
import org.apache.tomcat.jni.User;
/**
 *
 * @author Jon Neal
 */
public class DBConnector {   
    
    private final String dbName = "SOFT225FBC";
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet results;
    
    static Connection currentCon = null;
    static ResultSet rs = null;
    
    public DBConnector() {
        //for bean tag use
    }
    //**OPEN CONNECTION**
    public void createConnection(){        
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

            String dbURL = "jdbc:odbc:" + dbName;
            conn = DriverManager.getConnection(dbURL);
        }
         catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
     //**Login****Login****Login****Login****Login****Login****Login**
    
  
        public boolean usernameExists(String Username) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Login WHERE Username = ?";
        try {
             
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, Username);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
         if (null == selectUserByUsername(Username))
            exists = true;
        return exists;
        }
        
        public UserLoginList selectAllUsers() {
        return selectAllUsers("UserName");
        }
        
        
        public UserLoginList selectAllUsers(String orderUsers) {
        
        UserLoginList userLoginList = null;
        
        if (orderUsers == null)
            orderUsers = "UserName";

        try {
            String strQuery;
            strQuery = "SELECT * "+
                    " FROM Login" +
                    " ORDER BY " + orderUsers;
            pstmt = conn.prepareStatement(strQuery);

            results = pstmt.executeQuery();
            
            userLoginList = new UserLoginList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
        return userLoginList;
    }

    public UserLoginDetails selectUserByUsername(String strUsername) {
        UserLoginDetails user = null;
        try {
            String strQuery = "SELECT *" +
                    "FROM Login" +
                    " WHERE Username = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, strUsername);
            results = stmt.executeQuery();

            while (results.next()) {
                user = new UserLoginDetails(
                        results.getString(1),results.getString(2),results.getString(3));
              
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        return user;
    }

    public void insertUser(UserLoginDetails user) {
        try {
             String strQuery;
             strQuery = " INSERT INTO Login" +
                 " (Role,  Username, Password)" 
                     +
                 " VALUES(?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
  
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    
    public void updateUser(UserLoginDetails user) {
        try {
            String strQuery 
                    
               = "UPDATE Login" +
                " SET Role = ?, Username = ?, Password = ?"
                 +
                " WHERE Username = ?";

            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
             
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public String deleteUser(String Username) {
        int noOfUpdates = 0;
        String message = "";
        try {
            String strQuery = "DELETE FROM Login" +
                " WHERE Username = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, Username);
            noOfUpdates = stmt.executeUpdate();
        }
        catch (SQLException e) {
            message = "SQL Exception: " + e.getMessage();
        }
        if (message.length() ==0 && noOfUpdates == 0)
            message = "Record was not updated";

        return message;    
    }
        
     
    
    //**CLUBS**CLUBS**CLUBS**CLUBS**CLUBS**CLUBS**CLUBS**
        public boolean clubCodeExists(String clubCode) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Clubs WHERE ClubCode = ?";
        try {
             
           pstmt = conn.prepareStatement(query);
            pstmt.setString(1, clubCode);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
         if (null == selectClubByClubCode(clubCode))
            exists = true;
        return exists;
        }

        public ClubList selectAllClubs() {
        return selectAllClubs("ClubName");
        }
   
    
    public ClubList selectAllClubs(String orderClubs) {
        
        ClubList clubList = null;
        
        if (orderClubs == null)
            orderClubs = "ClubName";

        try {
            String strQuery;
            strQuery = "SELECT * "+
                    " FROM Clubs" +
                    " ORDER BY " + orderClubs;
            pstmt = conn.prepareStatement(strQuery);

            results = pstmt.executeQuery();
            
            clubList = new ClubList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
        return clubList;
    }

    public ClubDetails selectClubByClubCode(String strClubCode) {
        ClubDetails club = null;
        try {
            String strQuery = "SELECT *" +
                    "FROM Clubs" +
                    " WHERE ClubCode = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, strClubCode);
            results = stmt.executeQuery();

            while (results.next()) {
                club = new ClubDetails(
                        results.getString(1),results.getString(2),results.getString(3),
                        results.getString(4),results.getString(5),results.getString(6),
                                results.getString(7),results.getString(8),results.getString(9),
                                    results.getString(10));
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        return club;
    }

    public void insertClub(ClubDetails club) {
        try {
             String strQuery;
             strQuery = " INSERT INTO Clubs" +
                 " (ClubCode,  ClubName, ClubManagerFirstName,"
                    + " ClubManagerLastName, ClubStreetAddress, ClubTown, ClubCounty, ClubPostCode, "
                    + "ClubTelNum, ClubEmail) " +
                 " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, club.getClubCode());
            stmt.setString(2, club.getClubName());
            stmt.setString(3, club.getClubManagerFirstName());
            stmt.setString(4, club.getClubManagerLastName());
            stmt.setString(5, club.getClubStreetAddr());
            stmt.setString(6, club.getClubTown());
            stmt.setString(7, club.getClubCounty());
            stmt.setString(8, club.getClubPostCode());
            stmt.setString(9, club.getClubTelNum());
            stmt.setString(10, club.getClubEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    
    public void updateClub(ClubDetails club) {
        try {
            String strQuery 
                    
               = "UPDATE Clubs" +
                " SET ClubName = ?, ClubManagerFirstName = ?, ClubManagerLastName = ?,"
                    + " ClubStreetAddress = ?, ClubTown = ?, ClubCounty = ?, ClubPostCode = ?,"
                    + "ClubTelNum = ?, ClubEmail = ?" +
                " WHERE ClubCode = ?";

            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, club.getClubCode());
            stmt.setString(2, club.getClubName());
            stmt.setString(3, club.getClubManagerFirstName());
            stmt.setString(4, club.getClubManagerLastName());
            stmt.setString(5, club.getClubStreetAddr());
            stmt.setString(6, club.getClubTown());
            stmt.setString(7, club.getClubCounty());
            stmt.setString(8, club.getClubPostCode());
            stmt.setString(9, club.getClubTelNum());
            stmt.setString(10, club.getClubEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public String deleteClub(String clubCode) {
        int noOfUpdates = 0;
        String message = "";
        try {
            String strQuery = "DELETE FROM Clubs" +
                " WHERE ClubCode = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, clubCode);
            noOfUpdates = stmt.executeUpdate();
        }
        catch (SQLException e) {
            message = "SQL Exception: " + e.getMessage();
        }
        if (message.length() ==0 && noOfUpdates == 0)
            message = "Record was not updated";

        return message;    
    }
    //**MEMBERS**MEMBERS**MEMBERS**MEMBERS**MEMBERS**MEMBERS** 
    public boolean memberIDExists(String memCode) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Members WHERE MemberID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, memCode);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

    public MemberList selectAllMembers() {
        return selectAllMembers("MemberID");
    }
    
    public MemberList selectAllMembers(String orderMembers) {
        MemberList memList = null;
  
        
        if (orderMembers == null)
            orderMembers = "MemberID";

        try {
            String strQuery;
             strQuery = "SELECT * "+
                    " FROM Members" +
                    " ORDER BY " + orderMembers;
            
    
            pstmt = conn.prepareStatement(strQuery);

            results = pstmt.executeQuery();
            
            memList = new MemberList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }

        return memList;
    }

    public MemberDetails selectMemberByClub(String memClub) {
        MemberDetails member = null;
        try {
            String strQuery = "SELECT MemberID, MemberClub, MemberFirstName,"
                    + " MemberLastName, MemberStreetAddress, MemberTown, MemberCounty, MemberPostCode, "
                    + "MemberTelNum, MemberEmail"+
                    " FROM Members" +
                    " WHERE MemberID = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, memClub);
            results = stmt.executeQuery();

            while (results.next()) {
                member = new MemberDetails(
                        results.getString(1),results.getString(2),results.getString(3),
                        results.getString(4),results.getString(5),results.getString(6),
                                results.getString(7),results.getString(8),results.getString(9));
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        return member;
    }

    public void insertMember(MemberDetails member) {
        try {
             String strQuery = " INSERT INTO Members" +
                 " (MemberClub, MemberFirstName, MemberLastName, MemberStreetAddress, MemberTown, MemberCounty, "
                     + "MemberPostCode, MemberTelNum, MemberEmail) " +
                 " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, member.getMemCode());
            stmt.setString(2, member.getMemClub());
            stmt.setString(3, member.getMemFirstName());
            stmt.setString(4, member.getMemLastNAme());
            stmt.setString(5, member.getMemStreetAddr());
            stmt.setString(6, member.getMemTown());
            stmt.setString(7, member.getMemCounty());
            stmt.setString(8, member.getMemPsotCode());
            stmt.setString(9, member.getMemTelNum());
            stmt.setString(10,member.getMemEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    
    public void updateMember(MemberDetails member) {
        try {
            String strQuery = "UPDATE Members" +
                " SET MemberClub = ?, MemberFirstName = ?, MemberLastName = ?,"
                    + " MemberStreetAddress = ?, MemberTown = ?, MemberCounty = ?, MemberPostCode = ?,"
                    + "MemberTelNum = ?, MemberEmail = ?" +
                " WHERE MemberID = ?";

            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, member.getMemCode());
            stmt.setString(2, member.getMemClub());
            stmt.setString(3, member.getMemFirstName());
            stmt.setString(4, member.getMemLastNAme());
            stmt.setString(5, member.getMemStreetAddr());
            stmt.setString(6, member.getMemTown());
            stmt.setString(7, member.getMemCounty());
            stmt.setString(8, member.getMemPsotCode());
            stmt.setString(9, member.getMemTelNum());
            stmt.setString(10,member.getMemEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    } 
    
    public String deleteMember(String memCode) {
        int noOfUpdates = 0;
        String message = "";
        try {
            String strQuery = "DELETE FROM Members" +
                " WHERE MemberID = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, memCode);
            noOfUpdates = stmt.executeUpdate();
        }
        catch (SQLException e) {
            message = "SQL Exception: " + e.getMessage();
        }
        if (message.length() ==0 && noOfUpdates == 0)
            message = "Record was not updated";

        return message;    
    }
    
    //**SUPPLIERS**SUPPLIERS**SUPPLIERS**SUPPLIERS**SUPPLIERS**
    public boolean supplierIDExists(String suppID) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Suppliers WHERE SupplierID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, suppID);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }
    
    public SupplierList selectAllSuppliers() {
        return selectAllSuppliers("SupplierName");
    }
    
    public SupplierList selectAllSuppliers(String orderSupp) {
        
        SupplierList suppList = null;
        
        if (orderSupp == null)
            orderSupp = "SupplierName";

        try {
            String strQuery; 
            strQuery = "SELECT * " +
                    " FROM Suppliers" +
                    " ORDER BY " + orderSupp;

            pstmt = conn.prepareStatement(strQuery);

            results = pstmt.executeQuery();
     
            
            suppList = new SupplierList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }

        return suppList;
    }

    public SupplierDetails selectSupplierByName(String suppName) {
        SupplierDetails supp = null;
        try {
           String strQuery = "SELECT SupplierID, SupplierName,SupplierContactFirstName,"
                    + "SupplierContactLastName, SupplierStreetAddress, SupplierCity, SupplierRegion, SupplierPostCode, "
                    + "SupplierTelNum, SupplierEmail"+
                    " FROM Suppliers" +
                    " WHERE Name = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, suppName);
            results = stmt.executeQuery();

            while (results.next()) {
                supp = new SupplierDetails(
                        results.getString(1),results.getString(2),results.getString(3),
                        results.getString(4),results.getString(5),results.getString(6),
                                results.getString(7),results.getString(8),results.getString(9),
                                    results.getString(10));
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        return supp;
    }

    public void insertSupplier(SupplierDetails supp) {
        try {
             String strQuery = " INSERT INTO Suppliers" +
                     "SELECT SupplierID, SupplierName,SupplierContactFirstName,"
                    + "SupplierContactLastName, SupplierStreetAddress, SupplierCity, SupplierRegion, SupplierPostCode, "
                    + "SupplierTelNum, SupplierEmail"+
                 " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, supp.getSuppID());
            stmt.setString(2, supp.getSuppName());
            stmt.setString(3, supp.getSuppConFirstName());
            stmt.setString(4, supp.getSuppConLastName());
            stmt.setString(5, supp.getSuppStreetAddr());
            stmt.setString(6, supp.getSuppTown());
            stmt.setString(7, supp.getSuppCounty());
            stmt.setString(8, supp.getSuppPostCode());
            stmt.setString(9, supp.getSuppTelNum());
            stmt.setString(10,supp.getSuppEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    
    public void updateSupplier(SupplierDetails supp) {
        try {
            String strQuery = "UPDATE Supplier" +
                " SET SupplierName = ?, SupplierContactFirstName = ?, SupplierContactLastName = ?,"
                    + " SupplierStreetAddress = ?, SupplierCity = ?, SupplierRegion = ?, SupplierPostCode = ?,"
                    + "SupplierTelNum = ?, SupplierEmail = ?" +
                " WHERE SupplierID = ?";

            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, supp.getSuppID());
            stmt.setString(2, supp.getSuppName());
            stmt.setString(3, supp.getSuppConFirstName());
            stmt.setString(4, supp.getSuppConLastName());
            stmt.setString(5, supp.getSuppStreetAddr());
            stmt.setString(6, supp.getSuppTown());
            stmt.setString(7, supp.getSuppCounty());
            stmt.setString(8, supp.getSuppPostCode());
            stmt.setString(9, supp.getSuppTelNum());
            stmt.setString(10,supp.getSuppEmail());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    } 
    
    public String deleteSupplier(String suppID) {
        int noOfUpdates = 0;
        String message = "";
        try {
            String strQuery = "DELETE FROM Suppliers" +
                " WHERE SupplierID = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, suppID);
            noOfUpdates = stmt.executeUpdate();
        }
        catch (SQLException e) {
            message = "SQL Exception: " + e.getMessage();
        }
        if (message.length() ==0 && noOfUpdates == 0)
            message = "Record was not updated";

        return message;    
    }
    //**STOCK****STOCK****STOCK****STOCK****STOCK***
    public boolean productIDExists(String productID) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Products WHERE ProductID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, productID);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }

    public StockList selectAllStock() {
        return selectAllStock("ProductID");
    }
    
    public StockList selectAllStock(String orderStock) {
        StockList stockList = null;
        
        if (orderStock == null)
            orderStock = "ProductID";

        try {
            String strQuery = "SELECT *"+
                    " FROM Products" +
                    " ORDER BY " + orderStock;
            PreparedStatement stmt = conn.prepareStatement(strQuery);

            results = stmt.executeQuery();
            
            stockList = new StockList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }

        return stockList;
    }

    public StockDetails selectStockByProductID(String productID) {
        StockDetails stock = null;
        try {
            String strQuery = "SELECT ProductID, Category, ItemName, Quantity"
                    + "Price, Weight, Description" +
                    " FROM Products" +
                    " WHERE ProductID = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, productID);
            results = stmt.executeQuery();

            while (results.next()) {
                stock = new StockDetails(
                        results.getString(1),results.getString(2),results.getString(3),
                        results.getInt(4),results.getDouble(5),results.getDouble(6),
                        results.getString(7));
            }
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
        return stock;
    }

    public void insertStock(StockDetails stock) {
        try {
             String strQuery = " INSERT INTO Products" +
                 " (ProductID, Category, ItemName, Quantity"
                    + "Price, Weight, Description SupplierID" +
                 " VALUES(?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, stock.getProductID());
            stmt.setString(2, stock.getProdCategory());
            stmt.setString(3, stock.getProdName());
            stmt.setInt(4, stock.getProdQuantity());
            stmt.setDouble(5, stock.getProdPrice());
            stmt.setDouble(6, stock.getProdWeight());
            stmt.setString(7, stock.getProdDescription());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    
    public void updateStock(StockDetails stock) {
        try {
            String strQuery = "UPDATE Products" +
                " SET Category = ?, ItemName = ?, Quantity = ?,"
                    + " Price = ?, Weight = ?, Description = ?, supplierID = ?" +
                " WHERE ProductID = ? ";

            PreparedStatement stmt = conn.prepareStatement(strQuery);
             stmt.setString(1, stock.getProductID());
            stmt.setString(2, stock.getProdCategory());
            stmt.setString(3, stock.getProdName());
            stmt.setInt(4, stock.getProdQuantity());
            stmt.setDouble(5, stock.getProdPrice());
            stmt.setDouble(6, stock.getProdWeight());
            stmt.setString(7, stock.getProdDescription());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    } 
    
    public String deleteStock(String prodID) {
        int noOfUpdates = 0;
        String message = "";
        try {
            String strQuery = "DELETE FROM Products" +
                " WHERE ProductID = ?";
            PreparedStatement stmt = conn.prepareStatement(strQuery);
            stmt.setString(1, prodID);
            noOfUpdates = stmt.executeUpdate();
        }
        catch (SQLException e) {
            message = "SQL Exception: " + e.getMessage();
        }
        if (message.length() ==0 && noOfUpdates == 0)
            message = "Record was not updated";

        return message;    
    }
    //DONATION**
    public boolean donationIDExists(String donationID) {
        boolean exists = false;
        int count = 0;
        String query = "SELECT * FROM Donation WHERE DonationID = ?";
        try {
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, donationID);
            results = pstmt.executeQuery();
            if (results.next())
            exists = true;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return exists;
    }
    public DonationList selectAllDonations(String orderDonations) {
        DonationList donList = null;
        
        if (orderDonations == null)
            orderDonations = "DonationID";

        try {
            String strQuery = "SELECT *"+
                    " FROM Donation" +
                    " ORDER BY " + orderDonations;
            PreparedStatement stmt = conn.prepareStatement(strQuery);

            results = stmt.executeQuery();
            
            donList = new DonationList(results);
        }
         catch (SQLException e) {
            e.printStackTrace();
        }

        return donList;
    }
    public void insertDonation(DonationDetails donation) {
        try {
             String strQuery = " INSERT INTO Donation" +
                 " (ClubCode, AmountDonated, donorID, DonationID"+
                 " VALUES(?, ?, ?, ?)";

            PreparedStatement stmt = conn.prepareStatement(strQuery);

            stmt.setString(1, donation.getClubCode());
            stmt.setDouble(2, donation.getAmountDonated());
            stmt.setString(3, donation.getDonorID());
            stmt.setInt(4, donation.getDonationID());
            stmt.executeUpdate();
        }
         catch (SQLException e) {
             e.printStackTrace();
        }
    }
    //**DONOR**
    
    //**CLUB LOGIN**
    
    //**ClOSE CONNECTION**
    public void closeConnection() {
        try {
            if ((conn != null) || (conn.isClosed() == false)) {
                conn.close();
            }
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
    }  
}   
    
    
    