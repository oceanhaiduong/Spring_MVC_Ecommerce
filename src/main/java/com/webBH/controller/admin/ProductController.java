package com.webBH.controller.admin;

import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Product;


@Controller
public class ProductController extends BaseControllerAdmin {

	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
	public ModelAndView getProducts() {
		map = new HashMap<>();
		map.put("products", productService.getAllProduct());
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/product/index", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/newPro", method = RequestMethod.GET)
	public ModelAndView AddTypePage() {
		map = new HashMap<>();
		product = new Product();
		map.put("products", product);
		map.put("categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/product/add", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/addPro", method = RequestMethod.POST)
	public String AddProduct(@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "myFile", required = true) MultipartFile myFile,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "price_product", required = true) Integer price_product,
			@RequestParam(value = "category_id", required = true) Integer category_id,
			@ModelAttribute("products") @Valid Product product, BindingResult bindingResult,
			ModelMap modelMap) {

		// root path
//		String filePath = context.getRealPath("template/img");
		// disk path
		modelMap.addAttribute("categories", categoryService.getAllCategory()); // fix route
		modelMap.addAttribute("User_name", getUserName()); // fix route
		String filePath2 = "D:/Java spring/webBH/src/main/webapp/template/img";
		String fileName;
		Date date = new Date();
		Timestamp ts = new Timestamp(date.getTime());

		if (bindingResult.hasErrors()) {
			System.out.println("vo nay");
//			return "redirect:/admin/newPro";
			return "admin/product/add";
		} else {
			try {
				fileName = myFile.getOriginalFilename();
//					File file = new File(filePath + '/' + fileName);
				File file2 = new File(filePath2 + '/' + fileName);
//					myFile.transferTo(file);
				myFile.transferTo(file2);
				product = new Product();
				product.setTitle(title);
				product.setImg_path(fileName);
				product.setContent(content);
				product.setCreated_at(ts);
				product.setUpdated_at(ts);
				product.setPrice_product(price_product);
				product.setCategory_id(category_id);
				product.setPath(filePath2);
				int resp = productService.addProduct(product);

				if (resp > 0) {
					modelMap.addAttribute("msg", "Thêm sản phẩm thành công !");
					return "admin/product/success/AddSuccess";
				} else {
					modelMap.addAttribute("msg", "Thêm sản phẩm thất bại !");
					return "admin/product/success/AddSuccess";
				}
			} catch (Exception e) {
				return "admin/product/add";
			}
		}

	}

	@RequestMapping(value = "/admin/editPro/{id}", method = RequestMethod.GET)
	public ModelAndView EditProductPage(@PathVariable("id") int id, ModelMap productModel) {
		map = new HashMap<>();
		map.put("id", id);
		map.put("productDetail", productService.getProduct(id));
		map.put("categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/product/edit", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/editPro", method = RequestMethod.POST)
	public String EditProduct(@RequestParam int id, @RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "myFile", required = true) MultipartFile myFile,
			@RequestParam(value = "price_product", required = true) Integer price_product,
			@RequestParam(value = "category_id", required = true) Integer category_id, 
			ModelMap modelMap) {

		modelMap.addAttribute("User_name", getUserName()); // fix route
		product = new Product();
		String filePath = "D:/Java spring/webBH/src/main/webapp/template/img/";
		String fileName;
		Date date = new Date();
		Timestamp ts = new Timestamp(date.getTime());

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
				product.setUpdated_at(ts);
				int resp = productService.updateProduct(product);
				if (resp > 0) {
					modelMap.addAttribute("msg", "Sửa sản phẩm thành công !");
					return "admin/product/success/AddSuccess";
				} else {
					modelMap.addAttribute("msg", "Sửa sản phẩm thất bại !");
					return "admin/product/success/AddSuccess";
				}
			} catch (Exception e) {
//				fileName = product.getImg_path();
				product.setId(id);
				product.setTitle(title);
				product.setContent(content);
				product.setPrice_product(price_product);
				product.setUpdated_at(ts);
				product.setCategory_id(category_id);
//				product.setImg_path(fileName);
				int resp = productService.updateProductWithOutImg(product);
				if (resp > 0) {
					modelMap.addAttribute("msg", "Sửa sản phẩm thành công !");
					return "admin/product/success/AddSuccess";
				} else {
					modelMap.addAttribute("msg", "Sửa sản phẩm thất bại !");
					return "admin/product/success/AddSuccess";
				}
			}

		} else {
			return "admin/product/edit";
		}
	}

	@RequestMapping(value = "/admin/delete/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") int id, ModelMap modelMap) {
		int resp = productService.deleteProduct(id);
		modelMap.addAttribute("products", productService.getAllProduct());
		modelMap.addAttribute("User_name", getUserName()); // fix route
		if (resp > 0) {
			modelMap.addAttribute("msg", "Sản phẩm với id : " + id + " xóa thành công.");
		} else {
			modelMap.addAttribute("msg", "Sản phẩm với id : " + id + " sửa thành công.");
		}
		return "redirect:/admin/product";
	}

}
