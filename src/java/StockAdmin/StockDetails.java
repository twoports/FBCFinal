/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package StockAdmin;

/**
 *
 * @author Jon Neal
 */
public class StockDetails {
    String productID;
    String  prodCategory;
    String prodName;
    int prodQuantity;
    double prodPrice;
    double prodWeight;
    String prodDescription;
    
    public StockDetails() {
        this(" ", " ", " ",0, 0.0,0.0," ");
    }

    public StockDetails(String productID, String prodCategory, String prodName, int prodQuantity, double prodPrice, double prodWeight, String prodDescription) {
        this.productID = productID;
        this.prodCategory = prodCategory;
        this.prodName = prodName;
        this.prodQuantity = prodQuantity;
        this.prodPrice = prodPrice;
        this.prodWeight = prodWeight;
        this.prodDescription = prodDescription;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProdCategory() {
        return prodCategory;
    }

    public void setProdCategory(String prodCategory) {
        this.prodCategory = prodCategory;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public int getProdQuantity() {
        return prodQuantity;
    }

    public void setProdQuantity(int prodQuantity) {
        this.prodQuantity = prodQuantity;
    }

    public double getProdPrice() {
        return prodPrice;
    }

    public void setProdPrice(double prodPrice) {
        this.prodPrice = prodPrice;
    }

    public double getProdWeight() {
        return prodWeight;
    }

    public void setProdWeight(double prodWeight) {
        this.prodWeight = prodWeight;
    }

    public String getProdDescription() {
        return prodDescription;
    }

    public void setProdDescription(String prodDescription) {
        this.prodDescription = prodDescription;
    }

    
}
