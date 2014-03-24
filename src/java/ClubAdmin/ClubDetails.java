/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ClubAdmin;

/**
 *
 * @author Jon Neal
 */
public class ClubDetails {
   private String clubCode;
   private String clubName;
   private String clubManagerFirstName;
   private String clubManagerLastName;
   private String clubStreetAddr;
   private String clubTown;
   private String clubCounty;
   private String clubPostCode;
   private String ClubTelNum;
   private String clubEmail;

   public ClubDetails() {
        this("", "", "", "", "", "", "", "", "", "");
    }
  
    
   public ClubDetails(String strClubCode, String strClubName, String strClubManFirstName,
            String strClubManLastName, String strClubStreetAddr, String strClubTown, 
            String strClubCounty, String strClubPC, String strClubTel, String strClubEmail) {
        
   clubCode = strClubCode;
   clubName = strClubName;
   clubManagerFirstName = strClubManFirstName;
   clubManagerLastName = strClubManLastName;
   clubStreetAddr = strClubStreetAddr;
   clubTown = strClubTown;
   clubCounty = strClubCounty;
   clubPostCode = strClubPC;
   ClubTelNum = strClubTel;
   clubEmail = strClubEmail;
    }

    public String getClubCode() {
        return clubCode;
    }

    public void setClubCode(String clubCode) {
        this.clubCode = clubCode;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    public String getClubManagerFirstName() {
        return clubManagerFirstName;
    }

    public void setClubManagerFirstName(String clubManagerFirstName) {
        this.clubManagerFirstName = clubManagerFirstName;
    }

    public String getClubManagerLastName() {
        return clubManagerLastName;
    }

    public void setClubManagerLastName(String clubManagerLastName) {
        this.clubManagerLastName = clubManagerLastName;
    }

    public String getClubStreetAddr() {
        return clubStreetAddr;
    }

    public void setClubStreetAddr(String clubStreetAddr) {
        this.clubStreetAddr = clubStreetAddr;
    }

    public String getClubTown() {
        return clubTown;
    }

    public void setClubTown(String clubTown) {
        this.clubTown = clubTown;
    }

    public String getClubCounty() {
        return clubCounty;
    }

    public void setClubCounty(String clubCounty) {
        this.clubCounty = clubCounty;
    }

    public String getClubPostCode() {
        return clubPostCode;
    }

    public void setClubPostCode(String clubPostCode) {
        this.clubPostCode = clubPostCode;
    }

    public String getClubTelNum() {
        return ClubTelNum;
    }

    public void setClubTelNum(String ClubTelNum) {
        this.ClubTelNum = ClubTelNum;
    }

    public String getClubEmail() {
        return clubEmail;
    }

    public void setClubEmail(String clubEmail) {
        this.clubEmail = clubEmail;
    }
   
}