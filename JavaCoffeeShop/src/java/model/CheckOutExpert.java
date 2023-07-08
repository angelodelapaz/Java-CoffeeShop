package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//package model;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

public class CheckOutExpert {

    public List<Integer> getOrder(String[] orderReq) {

        int[] orders = new int[orderReq.length]; //quantity string
        int[] price = {100, 110, 120, 120, 120}; //price

        List<Integer> output = new ArrayList<Integer>();


        for (int i = 0; i < orders.length; i++) {

            String holder = orderReq[i];
            int number = Integer.parseInt(holder);
            orders[i] = number; //int quantity

            int totalEach = orders[i]*price[i];

            output.add(orders[i]);
            output.add(totalEach);

        }

        return output;
    }

    public int totalOrder(List<Integer> orderList)
    {
        int total = 0;
        for (int i = 0; i < orderList.size(); i++) {
            if(i%2 == 0)
                ;
            else
                total = total + orderList.get(i);

        }
        return total;
    }

    public boolean inputValidation(boolean validInput, String[] orderReq)
    {
        for (int i = 0; i < orderReq.length; i++) {

            String holder = orderReq[i];
            try
            {
                int number = Integer.parseInt(holder);
            }
            catch(NumberFormatException nfe)
            {
                return false;
            } 
        }
        return true;
    }

 
}