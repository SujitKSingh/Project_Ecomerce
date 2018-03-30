package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SuplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class ProductController {

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	CartDAO cartDAO;
	

	@Autowired
	ProductDAO productDAO;

	@Autowired
	SuplierDAO suplierDAO;
	
	@RequestMapping("/product")
	public String showProductPage(Model m) {
		Product product = new Product();
		m.addAttribute("product", product);
		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);
		m.addAttribute("catlist", categoryDAO.getCategories());
		m.addAttribute("suplist", suplierDAO.getsupliers());
		for (Product nproduct : productDAO.getProducts()) {
			System.out.println(nproduct.getproductName() + ",");
		}
		return "Product";
	}

	@RequestMapping(value = "/InsertProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product,BindingResult results,Model m,
			@RequestParam(value = "pimage") MultipartFile filedet, @RequestParam("categoryId") int catId) {
		if (filedet == null) {
			System.out.println("error");
		}
		List<Product> listProducts;
		if(results.hasErrors())
		{
			m.addAttribute("catlist", categoryDAO.getCategories());
			m.addAttribute("suplist", suplierDAO.getsupliers());
			
			listProducts = productDAO.getProducts();
			m.addAttribute("listProducts", listProducts);
			return "Product";
		}
		
		
		productDAO.addProduct(product);
		Product product1 = new Product();
		product.setCategoryId(catId);
		m.addAttribute(product1);
		

		String imagePath = "D:\\eclipse-jee-oxygen-2-win32-x86_64\\oxy workspace\\Project_Ecomerce\\InteriorFront\\src\\main\\webapp\\resources\\images\\";
		imagePath = imagePath + String.valueOf(product.getproductId()) + ".jpg";
		File image = new File(imagePath);

		if (!filedet.isEmpty()) {

			try {
				byte[] fileBuffer = filedet.getBytes();
				FileOutputStream fos = new FileOutputStream(image);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			} catch (Exception e) {
				System.out.println("Exception Arised:" + e);
				e.printStackTrace();
			}
		} else {
			System.out.println("Problem Occured in File Uploading");
		}

		m.addAttribute("catlist", categoryDAO.getCategories());
		m.addAttribute("suplist", suplierDAO.getsupliers());
		 listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);
		return "Product";
	}

	public LinkedHashMap<Integer, String> listCategories() {
		List<Category> listCategories = categoryDAO.getCategories();
		LinkedHashMap<Integer, String> catlist = new LinkedHashMap<Integer, String>();
		for (Category category : listCategories) {
			catlist.put(category.getCategoryId(), category.getCategoryName());
		}
		return catlist;
	}

	@RequestMapping(value = "/deleteProduct/{product}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("product") int product, Model m) {
		productDAO.deleteProduct(productDAO.getProduct(product));
		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProduct", listProducts);
		m.addAttribute("product", new Product());

		return "Product";
	}

	@RequestMapping("/Products/{categoryId}")
	public String getProductByCategory(@PathVariable("categoryId")int  categoryId,Model m) {
		List<Product> listProducts = productDAO.getProductByCategory(categoryId);
		m.addAttribute("listProducts", listProducts);
		return "ProductPage";
	}
	
	@RequestMapping(value = "/productPage", method = RequestMethod.GET)
	public String showProductsPage(Model m) {
		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);
		return "ProductPage";
	}

	@RequestMapping(value = "/productDesc/{productId}", method = RequestMethod.GET)
	public String showProductDesc(@PathVariable("productId") int productId, Model m, HttpSession session) {
		Product product = productDAO.getProduct(productId);
		String categoryName = categoryDAO.getCategory(product.getCategoryId()).getCategoryName();
		String suplierName = suplierDAO.getSuplier(product.getSuplierId()).getsuplierName();
		m.addAttribute("ProductInfo", product);
		m.addAttribute("categoryName", categoryName);
		m.addAttribute("suplierName", suplierName);
		m.addAttribute("product", product.getproductId());

		System.out.println(product.getproductId());

		return "ProductDesc";
	}
}
