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
public class DonationDetails {
    
    String clubCode;
    double amountDonated;
    String donorID;
    int donationID;
    
    public DonationDetails() {
        this("",0.0,"",0);
    }

    public DonationDetails(String clubCode, double amountDonated, String donorID, int donationID) {
        this.clubCode = clubCode;
        this.amountDonated = amountDonated;
        this.donorID = donorID;
        this.donationID = donationID;
    }

    public String getClubCode() {
        return clubCode;
    }

    public void setCluCode(String clubCode) {
        this.clubCode = clubCode;
    }

    public double getAmountDonated() {
        return amountDonated;
    }

    public void setAmountDonated(double amountDonated) {
        this.amountDonated = amountDonated;
    }

    public String getDonorID() {
        return donorID;
    }

    public void setDonorID(String donorID) {
        this.donorID = donorID;
    }

    public int getDonationID() {
        return donationID;
    }

    public void setDonationID(int donationID) {
        this.donationID = donationID;
    }
    
    
}
