/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DonationAdmin;

/**
 *
 * @author Jon Neal
 */
public class DonorDetails {
    String donorID;
    String donFirstName;
    String donLastName;
    String donStreetAddr;
    String donTown;
    String donCounty;
    String donPostCode;
    String donTelNum;
    String donEmail;

    public DonorDetails() {
        this(" ", " ", " "," "," "," "," "," "," ");
    }
    
    public DonorDetails(String donorID, String donFirstName, String donLastName, String donStreetAddr, String donTown, String donCounty, String donPostCode, String donTelNum, String donEmail) {
        this.donorID = donorID;
        this.donFirstName = donFirstName;
        this.donLastName = donLastName;
        this.donStreetAddr = donStreetAddr;
        this.donTown = donTown;
        this.donCounty = donCounty;
        this.donPostCode = donPostCode;
        this.donTelNum = donTelNum;
        this.donEmail = donEmail;
    }

    public String getDonorID() {
        return donorID;
    }

    public void setDonorID(String donorID) {
        this.donorID = donorID;
    }

    public String getDonFirstName() {
        return donFirstName;
    }

    public void setDonFirstName(String donFirstName) {
        this.donFirstName = donFirstName;
    }

    public String getDonLastName() {
        return donLastName;
    }

    public void setDonLastName(String donLastName) {
        this.donLastName = donLastName;
    }

    public String getDonStreetAddr() {
        return donStreetAddr;
    }

    public void setDonStreetAddr(String donStreetAddr) {
        this.donStreetAddr = donStreetAddr;
    }

    public String getDonTown() {
        return donTown;
    }

    public void setDonTown(String donTown) {
        this.donTown = donTown;
    }

    public String getDonCounty() {
        return donCounty;
    }

    public void setDonCounty(String donCounty) {
        this.donCounty = donCounty;
    }

    public String getDonPostCode() {
        return donPostCode;
    }

    public void setDonPostCode(String donPostCode) {
        this.donPostCode = donPostCode;
    }

    public String getDonTelNum() {
        return donTelNum;
    }

    public void setDonTelNum(String donTelNum) {
        this.donTelNum = donTelNum;
    }

    public String getDonEmail() {
        return donEmail;
    }

    public void setDonEmail(String donEmail) {
        this.donEmail = donEmail;
    }
    
    
    
}
