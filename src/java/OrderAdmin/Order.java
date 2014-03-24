/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package OrderAdmin;

import java.util.ArrayList;

/**
 *
 * @author Jon Neal
 */
public class Order {
    
    private ArrayList<OrderItem> order;
    private boolean empty;

    public Order() {
        order = new ArrayList<OrderItem>();
        empty = true;
    }

    public void addToOrder(OrderItem newItem) {
        order.add(newItem);
        empty = false;
    }

    public OrderItem retrieveItemAt(int index) {
        if (index < 0 || index >= order.size())
            return null;
        else
            return order.get(index);
    }

    public int size() {
        return order.size();
    }

    public boolean isEmpty() {
        return (order.isEmpty());
    }

    public void emptyOrder() {
        order.clear();
        empty = true;
    }
    
    public double orderTotal() {
        double cartTotal = 0;
        for (OrderItem item : order) 
            cartTotal += item.itemTotal();   
        return cartTotal;
    }
}

   
