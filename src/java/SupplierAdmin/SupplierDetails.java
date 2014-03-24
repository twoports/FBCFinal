/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SupplierAdmin;

/**
 *
 * @author Jon Neal
 */
public class SupplierDetails {
    String suppID;
    String suppName;
    String suppConFirstName;
    String suppConLastName;
    String suppStreetAddr;
    String suppTown;
    String suppCounty;
    String suppPostCode;
    String suppTelNum;
    String suppEmail;

    public SupplierDetails() {
        this(" ", " ", " ", " "," "," "," "," "," "," ");
    }
    
    public SupplierDetails(String suppID, String suppNAme, String suppConFirstName, String suppConLastName, String suppStreetAddr, String suppTown, String suppCounty, String suppPostCode, String suppTelNum, String suppEmail) {
        this.suppID = suppID;
        this.suppName = suppNAme;
        this.suppConFirstName = suppConFirstName;
        this.suppConLastName = suppConLastName;
        this.suppStreetAddr = suppStreetAddr;
        this.suppTown = suppTown;
        this.suppCounty = suppCounty;
        this.suppPostCode = suppPostCode;
        this.suppTelNum = suppTelNum;
        this.suppEmail = suppEmail;
    }

    public String getSuppID() {
        return suppID;
    }

    public void setSuppID(String suppID) {
        this.suppID = suppID;
    }

    public String getSuppName() {
        return suppName;
    }

    public void setSuppName(String suppName) {
        this.suppName = suppName;
    }

    public String getSuppConFirstName() {
        return suppConFirstName;
    }

    public void setSuppConFirstName(String suppConFirstName) {
        this.suppConFirstName = suppConFirstName;
    }

    public String getSuppConLastName() {
        return suppConLastName;
    }

    public void setSuppConLastName(String suppConLastName) {
        this.suppConLastName = suppConLastName;
    }

    public String getSuppStreetAddr() {
        return suppStreetAddr;
    }

    public void setSuppStreetAddr(String suppStreetAddr) {
        this.suppStreetAddr = suppStreetAddr;
    }

    public String getSuppTown() {
        return suppTown;
    }

    public void setSuppTown(String suppTown) {
        this.suppTown = suppTown;
    }

    public String getSuppCounty() {
        return suppCounty;
    }

    public void setSuppCounty(String suppCounty) {
        this.suppCounty = suppCounty;
    }

    public String getSuppPostCode() {
        return suppPostCode;
    }

    public void setSuppPostCode(String suppPostCode) {
        this.suppPostCode = suppPostCode;
    }

    public String getSuppTelNum() {
        return suppTelNum;
    }

    public void setSuppTelNum(String suppTelNum) {
        this.suppTelNum = suppTelNum;
    }

    public String getSuppEmail() {
        return suppEmail;
    }

    public void setSuppEmail(String suppEmail) {
        this.suppEmail = suppEmail;
    }
   
}
