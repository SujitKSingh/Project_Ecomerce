package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SuplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Suplier;

@Controller
public class ProductController {
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	SuplierDAO suplierDAO;

	@RequestMapping("/product") // from admin user v r getting this
	public String showProductPage(Model m) {
		Product product = new Product();
		m.addAttribute("product", product);
		m.addAttribute("catlist", categoryDAO.getCategories());
		m.addAttribute("suplist", suplierDAO.getsupliers());
		m.addAttribute("listProduct", productDAO.getProducts());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());

		return "Product";
	}

	@RequestMapping("/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId, Model m)

	{
		productDAO.deleteProduct(productDAO.getProduct(productId));

		return "redirect:/product";
	}

	@RequestMapping(value = "/InsertProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("pimage") MultipartFile filedet, Model m) {

		if (result.hasErrors()) {
			m.addAttribute("product", product);
			m.addAttribute("catlist", categoryDAO.getCategories());
			m.addAttribute("suplist", suplierDAO.getsupliers());
			m.addAttribute("listProduct", productDAO.getProducts());
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			m.addAttribute("role", auth.getAuthorities().toString());

			return "Product";
		}
		Product product1 = new Product();
		m.addAttribute(product1);
		productDAO.addProduct(product);

		// ===> Image Uploading
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

		// ==>End of Image Uploading
		m.addAttribute("product", product);
		m.addAttribute("catlist", categoryDAO.getCategories());
		m.addAttribute("suplist", suplierDAO.getsupliers());
		m.addAttribute("listProduct", productDAO.getProducts());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());

		return "redirect:/product";
	}

	public LinkedHashMap<Integer, String> listCategories() // it is showing the category list
	{
		List<Category> listCategories = categoryDAO.getCategories();
		LinkedHashMap<Integer, String> catlist = new LinkedHashMap<Integer, String>();
		for (Category category : listCategories) {
			catlist.put(category.getCategoryId(), category.getCategoryName());
		}
		return catlist;
	}

	public LinkedHashMap<Integer, String> listSuppliers() // it is showing the supplier list
	{
		List<Suplier> listSuppliers = suplierDAO.getsupliers();
		LinkedHashMap<Integer, String> suplist = new LinkedHashMap<Integer, String>();
		for (Suplier supplier : listSuppliers) {
			suplist.put(supplier.getsuplierId(), supplier.getsuplierName());
		}
		return suplist;
	}

	@RequestMapping(value = "/productPage", method = RequestMethod.GET)
	public String showProductsPage(Model m) {
		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		m.addAttribute("role", auth.getAuthorities().toString());

		return "ProductPage";
	}

	@RequestMapping(value="/Products/{catId}")
	public String productByCategoryId(@PathVariable("catId")int catId,Model m)
	{
		m.addAttribute("listProducts", productDAO.getProductByCategory(catId));
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		m.addAttribute("role", auth.getAuthorities().toString());

		return "ProductPage";
	}
	/*
	 * @RequestMapping(value="/{categoryId}/Trending",method=RequestMethod.GET)
	 * public String showProductsTrending(@PathVariable("categoryId")int
	 * categoryId,Model m) { List<Product>
	 * listProducts=productDAO.listByCategory(categoryId);
	 * m.addAttribute("listProducts",listProducts); Authentication
	 * auth=SecurityContextHolder.getContext().getAuthentication();
	 * m.addAttribute("category", categoryDAO.getCategory(categoryId));
	 * m.addAttribute("role", auth.getAuthorities().toString());
	 * 
	 * return "Trending"; }
	 */
	@RequestMapping("/productDesc/{productId}")
	public String productDesc(@PathVariable("productId") int productId, Model m) {

		Product product = productDAO.getProduct(productId);
		String categoryName = categoryDAO.getCategory(product.getCategoryId()).getCategoryName();
		productDAO.updateProduct(product);
		m.addAttribute("ProductInfo", product);
		m.addAttribute("product", productId);
		m.addAttribute("categoryName", categoryName);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());

		return "ProductDesc";

	}

	@RequestMapping("/updateProduct/{productId}")
	public String updateCategory(@PathVariable("productId") int productId, Model m) {

		Product product1 = productDAO.getProduct(productId);

		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);
		m.addAttribute("productInfo", product1);
		m.addAttribute("catlist", categoryDAO.getCategories());
		m.addAttribute("suplist", suplierDAO.getsupliers());
		m.addAttribute("listProduct", productDAO.getProducts());

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());

		return "UpdateProduct";

	}

	@RequestMapping(value = "/UpdateProduct", method = RequestMethod.POST)
	public String updateCategoryInDB(@ModelAttribute("product") Product product,
			@RequestParam("pimage") MultipartFile filedet, Model m) {
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
		productDAO.updateProduct(product);

		List<Product> listProducts = productDAO.getProducts();
		m.addAttribute("listProducts", listProducts);

		return "redirect:/product";
	}

}
