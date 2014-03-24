/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package OrderAdmin;

/**
 *
 * @author Jon Neal
 */
public class OrderItem {
    
    int orderID;
    String clubCode;
    String productID;
    int quantity;
    double price;
    String orderDate;
    String datePaid;
    String deliveryDate;
    
    public OrderItem() {
        this(0,"","", 0, 0.0,"","","");
    }

    public OrderItem(int orderID, String clubCode, String productID, int quantity, double price, String orderDate, String datePaid, String deliveryDate) {
        this.orderID = orderID;
        this.clubCode = clubCode;
        this.productID = productID;
        this.quantity = quantity;
        this.price = price;
        this.orderDate = orderDate;
        this.datePaid = datePaid;
        this.deliveryDate = deliveryDate;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getClubCode() {
        return clubCode;
    }

    public void setClubCode(String clubCode) {
        this.clubCode = clubCode;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getDatePaid() {
        return datePaid;
    }

    public void setDatePaid(String datePaid) {
        this.datePaid = datePaid;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }
    
    public double itemTotal() {
        return quantity * price;
    }
}


