package com.niit.daoimpl;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.CartDao;
import com.niit.dao.OrderDetailDao;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.OrderDetails;
import com.niit.model.Product;
import com.niit.model.User;

@Repository("orderDetailsDao")
public class OrderDetailsDaoImpl implements OrderDetailDao{
	@Autowired
	SessionFactory sessionFactory;
	
	public OrderDetailsDaoImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void insertOrderDetails(OrderDetails orderdetails){
		Session session = sessionFactory.getCurrentSession();
		session.merge(orderdetails);
	
	}

	@Transactional
	public List<OrderDetails> getOrder(String userEmail) {
		Session session = sessionFactory.getCurrentSession();
		List<OrderDetails> orders = null;
		try{
		Query query=session.createQuery("from OrderDetails where email=:email").setString("email",userEmail);
			orders=query.list();
		}
		catch(HibernateException e){
			e.printStackTrace();
		}
		return orders;
	}

	@Transactional
	public List<Integer> getOrderId(int cartid){
		System.out.println(cartid);
		Session session = sessionFactory.getCurrentSession();
		List<Integer> id = session.createSQLQuery("select orderid from OrderDetails where cartid= :cartid").setInteger("cartid", cartid).list();
		System.out.println(id);
		return id;
	}
	
	@Transactional
	public List<Date> getOrderDate(int cartid){
		System.out.println(cartid);
		Session session = sessionFactory.getCurrentSession();
		List<Date> date = session.createSQLQuery("select orderplacedon from OrderDetails where cartid= :cartid").setInteger("cartid", cartid).list();
		System.out.println(date);
		return date;
	}
	
	public OrderDetails getOrderDetails(String email){
		System.out.println("GetOrderDetails");
		Session session = sessionFactory.openSession();
		OrderDetails user = session.get(OrderDetails.class, email);
		System.out.println(email);
		session.close();
		return user;
	}

	@Transactional
	public void deleteOrderDetails(String email) {
		Session session = sessionFactory.getCurrentSession();
		List <OrderDetails> orders = null;
		Query query =session.createQuery("from OrderDetails where email=:email").setString("email",email);
		orders = query.list();
		for(OrderDetails orderDetails: orders)
		{
			session.delete(orderDetails);
		}	
	}
}

