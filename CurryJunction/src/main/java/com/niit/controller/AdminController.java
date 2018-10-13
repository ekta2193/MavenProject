package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class AdminController {
	
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping("admin")
	public ModelAndView admin()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("admin");
		
		return mv;
		
	}
	
	

	@RequestMapping("catAdminList")
	public ModelAndView catAdminList()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("catAdminList");
		
		return mv;
		
	}
	
	@RequestMapping("proAdminList")
	public ModelAndView proAdminList()
	{
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("productlist",productDao.retrieve());
		mv.addObject("catlist",categoryDao.retrieve());
		mv.setViewName("proAdminList");
		
		return mv;
		
	}
	
	
	
	

	
	
	
	@RequestMapping("saveCategory")
	public ModelAndView saveCategory(@RequestParam("cat_name") String cat_name,@RequestParam("cat_desc") String cat_desc)
	{
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist",categoryDao.retrieve());
		
		Category cat = new Category();
		
		cat.setCat_desc(cat_desc);
		cat.setCat_name(cat_name);
		
		categoryDao.insertOrUpdateCategory(cat);
		
		
		
		
		mv.setViewName("admin");
		
		return mv;
		
	}
	
	@RequestMapping("categoryUpdate")
	public ModelAndView categoryUpdate(@RequestParam("cat_id")int cat_id,@RequestParam("cat_name") String cat_name,@RequestParam("cat_desc") String cat_desc)
	{
		
		ModelAndView mv = new ModelAndView("redirect:/catAdminList?update");
		
		
		Category cat = new Category();
		cat.setCat_id(cat_id);
		cat.setCat_desc(cat_desc);
		cat.setCat_name(cat_name);
		mv.addObject("catlist",categoryDao.retrieve());
		categoryDao.insertOrUpdateCategory(cat);
		
		
		
		return mv;
		
	}
	
	
	@RequestMapping("updateCat")
	public ModelAndView updateCategory(@RequestParam("cat_id") String cat_id)
	{
		
		ModelAndView mv = new ModelAndView();
		
		
		
		
		mv.addObject("cat",categoryDao.getCategory(Integer.parseInt(cat_id)));
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		
		
		mv.setViewName("updateCategory");
		
		return mv;
		
	}
	
	@RequestMapping("updateprod")
	public ModelAndView updateprod(@RequestParam("pro_id") String pro_id)
	{
		
		ModelAndView mv = new ModelAndView();
		
		
		
		
		mv.addObject("pro",productDao.getProduct(Integer.parseInt(pro_id)));
		
		mv.addObject("productlist",productDao.retrieve());
		
		mv.addObject("catlist",categoryDao.retrieve());
		
		mv.setViewName("updateProduct");
		
		return mv;
		
	}
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(HttpServletRequest request,@RequestParam("pro_name") String pro_name,@RequestParam("pro_description") String pro_description,@RequestParam("pro_price") String pro_price,@RequestParam("pro_stock") String pro_stock,@RequestParam("pro_image")MultipartFile pro_image)
	{
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("catlist",categoryDao.retrieve());
		
		
		Product product = new Product();
		System.out.println(Integer.parseInt(request.getParameter("pro_category.cat_id")));
		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filename = pro_image.getOriginalFilename();
		product.setPro_imagename(filename);

		product.setPro_description(pro_description);
		product.setPro_price(pro_price);
		product.setPro_name(pro_name);
		product.setPro_category(categoryDao.getCategory(Integer.parseInt(request.getParameter("pro_category.cat_id"))));
		product.setPro_stock(Integer.parseInt(pro_stock));
		productDao.insertOrUpdateProduct(product);
		
		
		try 
		{
			byte imagebyte[] = pro_image.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			System.out.println(fos);
			fos.write(imagebyte);
			fos.close();
		}catch(IOException e)
		{ 
			e.printStackTrace();
		}

		mv.setViewName("admin");
		
		return mv;
		
	}
	@RequestMapping(value="productUpdate",method=RequestMethod.POST)
	public ModelAndView productUpdate(HttpServletRequest request,@RequestParam("pro_id")int pro_id,@RequestParam("pro_name") String pro_name,@RequestParam("pro_description") String pro_description,@RequestParam("pro_price") String pro_price,@RequestParam("pro_stock") String pro_stock,@RequestParam("pro_image")MultipartFile pro_image)
	{
		
		ModelAndView mv = new ModelAndView("redirect:/proAdminList?update");
		mv.addObject("catlist",categoryDao.retrieve());
		
		
		Product product = new Product();
		System.out.println(Integer.parseInt(request.getParameter("pro_category.cat_id")));
		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filename = pro_image.getOriginalFilename();
		product.setPro_imagename(filename);
		product.setPro_id(pro_id);
		product.setPro_description(pro_description);
		product.setPro_price(pro_price);
		product.setPro_name(pro_name);
		product.setPro_category(categoryDao.getCategory(Integer.parseInt(request.getParameter("pro_category.cat_id"))));
		product.setPro_stock(Integer.parseInt(pro_stock));
		productDao.insertOrUpdateProduct(product);
		
		
		try 
		{
			byte imagebyte[] = pro_image.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			System.out.println(fos);
			fos.write(imagebyte);
			fos.close();
		}catch(IOException e)
		{ 
			e.printStackTrace();
		}

		
		return mv;
		
	}
	
	
	
	@RequestMapping("deleteProd")
	public String deleteProduct(@RequestParam("pro_id") int pro_id)
	{
		productDao.deleteProd(pro_id);
		
		return "redirect:/proAdminList?del";
		//return "redirect:/admin/productAdminList?del";
	}
	
	@RequestMapping("deleteCat")
	public String deleteCat(@RequestParam("cat_id") int pro_id)
	{
		categoryDao.deleteCat(pro_id);
		
		return "redirect:/proAdminList?del";
		//return "redirect:/admin/productAdminList?del";
	}
	}
