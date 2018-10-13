package com.niit.controller;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.User;
import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDaoImpl;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("index");

		return mv;
		
	}
	
	@RequestMapping("about")
	public ModelAndView showAbout()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist",categoryDao.retrieve());
		mv.setViewName("about");
		return mv;
		
	}
	
	
	@RequestMapping("goToLogin")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("catlist",categoryDao.retrieve());
		mv.setViewName("login");
		return mv;
		
	}
	
	

	@RequestMapping("login")
	public ModelAndView login(@RequestParam(value="id",required=false) String id)
	{	ModelAndView m=new ModelAndView("login");
		if(id!=null){
		if(id.equals("1"))
			m.addObject("msg","Invalid Username or Password");
		else if(id.equals("2"))
			m.addObject("msg","You've been logged out");
		else if(id.equals("3"))
			m.addObject("msg","Your Account has been Deactivated");		
		}
		m.addObject("catlist", categoryDao.retrieve());
		m.addObject("prodList", productDao.retrieve());
		return m;	
	}
	
	@RequestMapping(value="/login_success",method=RequestMethod.POST)
	public String loginsuccess(@RequestParam Map<String,String> user,HttpSession session)
	{ 
		String username= SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println(username);
		String name = userDaoImpl.getUserName(username);
		String address = userDaoImpl.getUserAddress(username);
		String phone = userDaoImpl.getUserPhone(username);
		System.out.println(address);
		System.out.println(phone);
		User userDetails=userDaoImpl.getUser(user.get("username"));
		userDetails.setEnabled(true);
		userDaoImpl.insertOrUpdateUser(userDetails);
		session.setAttribute("username",username);
		session.setAttribute("address", address);
		session.setAttribute("phone", phone);
		session.setAttribute("name", name);
		session.setAttribute("usertitle",name.charAt(0));
		session.setAttribute("loggedIn",true);
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities =(Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		for(GrantedAuthority role:authorities)
		{
			System.out.println("Role:"+role.getAuthority()+"username"+username);
			if(role.getAuthority().equals("ROLE_ADMIN"))
				session.setAttribute("user",null);
			else
				session.setAttribute("user","user");
			}
		return "redirect:index";
	}


	

	@RequestMapping("signup")
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("register");
		return mv;
		
	}
	
	
	
	@RequestMapping("myAccount")
	public ModelAndView showAccount(HttpSession session)
	{
		ModelAndView mv = new ModelAndView();
		String phone=(String)session.getAttribute("phone");
		
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		mv.addObject("catlist", categoryDao.retrieve());
		mv.addObject("prodList", productDao.retrieve());
		mv.addObject("user", userDaoImpl.getUser(email));
		mv.addObject("phone" ,phone);
		mv.setViewName("myAccount");
		return mv; 
	}
	
	

	
	
	@RequestMapping("menu")
	public ModelAndView showMenu()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList",productDao.getProductByCatID(5));
		
		mv.addObject("catlist",categoryDao.retrieve());
		mv.addObject("show",true);
		
		mv.setViewName("menu");

		return mv;
		
		
	}
	
	
	@RequestMapping("index")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("index");

		return mv;
		
		
	}
	
	
	
	@RequestMapping("viewProducts")
	public ModelAndView viewProducts(@RequestParam("cat_id")int cat_id)
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		mv.addObject("prodList",productDao.getProductByCatID(cat_id));
		mv.addObject("catId",categoryDao.getCategory(cat_id));
		mv.addObject("show","true");
		mv.setViewName("proCategory");

		return mv;
		
		
	}
	
	
	
	
	
	
	@RequestMapping("productDetails")
	public ModelAndView showProductDetails(@RequestParam("pro_id") int pid)
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("prod", productDao.getProduct(pid));
		mv.addObject("catlist", categoryDao.retrieve());
		
		int cid = categoryDao.getCategoryByPid(pid);
		
		mv.addObject("prodList", productDao.getProductByCatID(cid));
		
		mv.setViewName("prodDetails");
		return mv; 
	}
	
	
	
	
	
	
	
	@RequestMapping("view")
	public ModelAndView view(@RequestParam("cat_id")int cat_id)
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		mv.addObject("prodList",productDao.getProductByCatID(cat_id));
		mv.addObject("catId",categoryDao.getCategory(cat_id));
		mv.addObject("show",true);
		mv.setViewName("menu");

		return mv;
		
		
	}
	
	@RequestMapping("saveUser")
	public ModelAndView saveUser(@RequestParam Map<String,String> user)
	{		
		
		ModelAndView mv = new ModelAndView();
		
		User u = new User();
		
		u.setUsername(user.get("username"));
		u.setAddress(user.get("address"));
		u.setPostcode(user.get("postcode"));
		u.setPassword(user.get("password"));
		u.setMobile(user.get("mobile"));
		u.setcountry(user.get("country"));
		u.setEmail(user.get("email"));
		u.setRole("ROLE_USER");
		u.setEnabled(true);
		
		userDaoImpl.insertOrUpdateUser(u);
		
		mv.addObject("msg", "ThankYou");
		mv.setViewName("login");
		
		
		return mv;
		
		
	}

	
	
}
