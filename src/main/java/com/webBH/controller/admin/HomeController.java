package com.webBH.controller.admin;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webBH.model.Product;
import com.webBH.service.CategoryService;
import com.webBH.service.ProductService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	// RequestMapping : noi nhan url, method : get - lay thong tin
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		return mav;
	}

	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
	public String getProducts(ModelMap productModel) {
		productModel.addAttribute("products", productService.getAllProduct());
		return "admin/product/index";
	}

	@RequestMapping(value = "/admin/newPro", method = RequestMethod.GET)
	public String AddProductPage(ModelMap categoryModel) {
		categoryModel.addAttribute("categories", categoryService.getAllCategory());
		return "admin/product/add";
	}

	@RequestMapping(value = "/admin/addPro", method = RequestMethod.POST)
	public String AddProduct(@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "myFile", required = true) MultipartFile myFile,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "price_product", required = true) Integer price_product,
			@RequestParam(value = "category_id", required = true) Integer category_id, ModelMap productModel,
			Product product, RedirectAttributes redirectAttributes) {

		String filePath = "D:/Java spring/webBH/src/main/webapp/template/img/";
		String fileName;
		try {
			fileName = myFile.getOriginalFilename();
			File file = new File(filePath + fileName);
			myFile.transferTo(file);
			product = new Product();
			product.setTitle(title);
			product.setImg_path(fileName);
			product.setContent(content);
			product.setPrice_product(price_product);
			product.setCategory_id(category_id);
			product.setPath(filePath);
			int resp = productService.addProduct(product);
			if (resp > 0) {
				productModel.addAttribute("msg", "Product Add successfull !");
				return "admin/product/success/AddSuccess";
			} else {
				productModel.addAttribute("msg", "Product addition failed !");
				return "admin/product/success/AddSuccess";
			}
		} catch (Exception e) {
			return "redirect:/admin/newPro";
		}

	}

	@RequestMapping(value = "/admin/editPro/{id}", method = RequestMethod.GET)
	public String EditProductPage(@PathVariable("id") int id, ModelMap productModel) {
		productModel.addAttribute("id", id);
		productModel.addAttribute("productDetail", productService.getProduct(id));
		productModel.addAttribute("categories", categoryService.getAllCategory());
		return "admin/product/edit";
	}

	@RequestMapping(value = "/admin/editPro", method = RequestMethod.POST)
	public String EditProduct(@RequestParam int id, @RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "myFile", required = true) MultipartFile myFile,
			@RequestParam(value = "price_product", required = true) Integer price_product,
			@RequestParam(value = "category_id", required = true) Integer category_id, ModelMap productModel) {

		Product product = new Product();
		String filePath = "D:/Java spring/webBH/src/main/webapp/template/img/";
		String fileName;

		if (myFile != null) {
			try {
				fileName = myFile.getOriginalFilename();
				File file = new File(filePath + fileName);
				myFile.transferTo(file);
				product.setId(id);
				product.setTitle(title);
				product.setContent(content);
				product.setPrice_product(price_product);
				product.setCategory_id(category_id);
				product.setImg_path(fileName);
				int resp = productService.updateProduct(product);
				if (resp > 0) {
					productModel.addAttribute("msg", "Product Add with successfull !");
					return "admin/product/success/AddSuccess";
				} else {
					productModel.addAttribute("msg", "Product addition with failed !");
					return "admin/product/success/AddSuccess";
				}
			} catch (Exception e) {
//				fileName = product.getImg_path();
				product.setId(id);
				product.setTitle(title);
				product.setContent(content);
				product.setPrice_product(price_product);
				product.setCategory_id(category_id);
//				product.setImg_path(fileName);
				int resp = productService.updateProductWithOutImg(product);
				if (resp > 0) {
					productModel.addAttribute("msg", "Product Add with successfull !");
					return "admin/product/success/AddSuccess";
				} else {
					productModel.addAttribute("msg", "Product addition with failed !");
					return "admin/product/success/AddSuccess";
				}
			}

		} else {
			return "admin/product/edit";
		}
	}

	@RequestMapping(value = "/admin/catePro", method = RequestMethod.GET)
	public String CateProductPage(ModelMap categoryModel) {
		categoryModel.addAttribute("categories", categoryService.getAllCategory());
		return "admin/typePro/index";
	}
	
	@RequestMapping(value = "/admin/delete/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") int id, ModelMap userModel, RedirectAttributes redirectAttributes) {
		int resp = productService.deleteProduct(id);
		userModel.addAttribute("products", productService.getAllProduct());
		if (resp > 0) {
			userModel.addAttribute("msg", "User with id : " + id + " deleted successfully.");
		} else {
			userModel.addAttribute("msg", "User with id : " + id + " deletion failed.");
		}
		return "redirect:/admin/product";
	}
	

}
