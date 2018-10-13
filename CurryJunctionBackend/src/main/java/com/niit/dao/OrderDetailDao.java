package com.niit.dao;

import java.util.Date;
import java.util.List;

import com.niit.model.OrderDetails;

public interface OrderDetailDao 

{
public void insertOrderDetails(OrderDetails orderdetails);
public List<OrderDetails>getOrder(String userEmail);
public OrderDetails getOrderDetails(String userEmail);
public List<Integer> getOrderId(int cartid);
public List<Date> getOrderDate (int cartid);
public void deleteOrderDetails (String userEmail);


}
