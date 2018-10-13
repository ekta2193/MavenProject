package com.niit.daoimpl;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.CartDao;
import com.niit.model.Cart;

@Repository
public class CartDaoImpl implements CartDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}

	@Transactional
	public void insertCart(Cart cart)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);
	}
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> findByCartId(String userEmail)
	{
		Session session = sessionFactory.getCurrentSession();
		List<Cart> cr = null;
		try 
		{
			//session.beginTransaction();
			//cr=(List<Cart>)session.createQuery("from Cart where username="+userEmail).list();
			Query query=session.createQuery("from Cart where email=:email and status = 'n'").setString("email",userEmail);
			
			
			cr=query.list();
			
			return cr;
			//session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			//session.getTransaction().rollback();
			return cr;
		}
		
	}
	
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> getPurchasedProducts(String userEmail)
	{
		Session session = sessionFactory.getCurrentSession();
		List<Cart> cr = null;
		try 
		{
			//session.beginTransaction();
			//cr=(List<Cart>)session.createQuery("from Cart where username="+userEmail).list();
			Query query=session.createQuery("from Cart where email=:email and status = 'y'").setString("email",userEmail);
			
			
			cr=query.list();
			
			
			//session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			//session.getTransaction().rollback();
		}
		return cr;
	}
	
	
	
	
	
	@Transactional
	public Cart getCartById(int cartProductId,String userEmail) //My Cart option on header
	{
		Session session = sessionFactory.getCurrentSession();
		Cart cr= null;
		//session.beginTransaction();
		//cr=(Cart)session.createQuery("from Cart where username="+userEmail+"and cartproductid="+cartProductId).list();
		/*cr=(Cart)session.createQuery("from Cart where username=:username and cartproductid=:cartproductid").setString("username",userEmail).setInteger("cartproductid",cartProductId).list();*/
		cr=(Cart)session.createQuery("from Cart where name=:name and cartproductid=:cartproductid").setInteger("cartproductid",cartProductId).setString("name",userEmail).uniqueResult();
		//session.getTransaction().commit();
		return cr;
	}
	
	public void deleteCart(int cartId)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Cart cr=(Cart)session.get(Cart.class,cartId);
		session.delete(cr);
		session.getTransaction().commit();
	}
	
	public void updateCart(Cart cr)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(cr);
		session.getTransaction().commit();
	}

	@Transactional
	public List<Cart> getCartByCartId(int cartid)
	{
		Session session = sessionFactory.getCurrentSession();
		List<Cart> cr = null ;
		try 
		{
			//session.beginTransaction();
			//cr=(List<Cart>)session.createQuery("from Cart where username="+userEmail).list();
			Query query=session.createQuery("from Cart where cartid=:cartid").setInteger("cartid", cartid);
			
			
			cr=query.list();
			
			
			//session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			//session.getTransaction().rollback();
		}
		return cr;
	}

	
}
