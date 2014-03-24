/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package memberAdmin;


/**
 *
 * @author Jon Neal
 */
public class MemberDetails {
    private String memCode;
    private String memClub;
    private String memFirstName;
    private String memLastNAme;
    private String memStreetAddr;
    private String memTown;
    private String memCounty;
    private String memPsotCode;
    private String memTelNum;
    private String memEmail;

    public MemberDetails() {
        this(" ", " ", " ", " "," "," "," "," "," ");
    }
    public MemberDetails(String memCode, String memClub, String memFirstName, String memLastNAme, String memStreetAddr, String memTown, String memCounty, String memPsotCode, String memTelNum) {
        this.memCode = memCode;
        this.memClub = memClub;
        this.memFirstName = memFirstName;
        this.memLastNAme = memLastNAme;
        this.memStreetAddr = memStreetAddr;
        this.memTown = memTown;
        this.memCounty = memCounty;
        this.memPsotCode = memPsotCode;
        this.memTelNum = memTelNum;
    }

    public String getMemCode() {
        return memCode;
    }

    public void setMemCode(String memCode) {
        this.memCode = memCode;
    }

    public String getMemClub() {
        return memClub;
    }

    public void setMemClub(String memClub) {
        this.memClub = memClub;
    }

    public String getMemFirstName() {
        return memFirstName;
    }

    public void setMemFirstName(String memFirstName) {
        this.memFirstName = memFirstName;
    }

    public String getMemLastNAme() {
        return memLastNAme;
    }

    public void setMemLastNAme(String memLastNAme) {
        this.memLastNAme = memLastNAme;
    }

    public String getMemStreetAddr() {
        return memStreetAddr;
    }

    public void setMemStreetAddr(String memStreetAddr) {
        this.memStreetAddr = memStreetAddr;
    }

    public String getMemTown() {
        return memTown;
    }

    public void setMemTown(String memTown) {
        this.memTown = memTown;
    }

    public String getMemCounty() {
        return memCounty;
    }

    public void setMemCounty(String memCounty) {
        this.memCounty = memCounty;
    }

    public String getMemPsotCode() {
        return memPsotCode;
    }

    public void setMemPsotCode(String memPsotCode) {
        this.memPsotCode = memPsotCode;
    }

    public String getMemTelNum() {
        return memTelNum;
    }

    public void setMemTelNum(String memTelNum) {
        this.memTelNum = memTelNum;
    }

    public String getMemEmail() {
        return memEmail;
    }

    public void setMemEmail(String memEmail) {
        this.memEmail = memEmail;
    }
}
