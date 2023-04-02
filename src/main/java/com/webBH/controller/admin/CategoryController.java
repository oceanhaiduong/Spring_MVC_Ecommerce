package com.webBH.controller.admin;

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
import org.springframework.web.servlet.ModelAndView;
import com.webBH.model.Category;

@Controller
public class CategoryController extends BaseControllerAdmin {

	@RequestMapping(value = "/admin/catePro", method = RequestMethod.GET)
	public ModelAndView CateProductPage() {
		map = new HashMap<>();
		map.put("categories", categoryService.getAllCategory());
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/typePro/index", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/newType", method = RequestMethod.GET)
	public ModelAndView AddTypePage() {
		map = new HashMap<>();
		category = new Category();
		map.put("categories", category);
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/typePro/add", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/addType")
	public String addPage(@RequestParam(value = "name_type", required = true) String name_type,
			@ModelAttribute("categories") @Valid Category category, BindingResult bindingResult,
			ModelMap modelMap) {
		modelMap.addAttribute("User_name", getUserName());
		if (bindingResult.hasErrors()) {
			return "admin/typePro/add";
		} else {
			category = new Category();
			category.setName_type(name_type);
			int resp = categoryService.addCategory(category);
			if (resp > 0) {
				modelMap.addAttribute("msg", "Tạo loại sản phẩm thành công !");
				return "admin/typePro/success/AddSuccess";
			} else {
				modelMap.addAttribute("msg", "Tạo loại sản phẩm thất bại !");
				return "admin/typePro/success/AddSuccess";
			}
		}
	}

	@RequestMapping(value = "/admin/editType/{id}", method = RequestMethod.GET)
	public ModelAndView AddTypePage(@PathVariable("id") int id) {
		map = new HashMap<>();
		category = new Category();
		map.put("categoyUp", category);
		map.put("id", id);
		map.put("category_detail", categoryService.getCategory(id));
		map.put("User_name", getUserName());
		_mvShare = new ModelAndView("admin/typePro/edit", map);
		return _mvShare;
	}

	@RequestMapping(value = "/admin/editTypeCate", method = RequestMethod.POST)
	public String EditType(@RequestParam int id, @RequestParam(value = "name_type", required = true) String name_type,
			@ModelAttribute("category_detail") @Valid Category category,
			BindingResult bindingResult, ModelMap modelMap) {
//
//		System.out.println(id);
//		System.out.println(name_type);
		modelMap.addAttribute("User_name", getUserName());
		if (bindingResult.hasErrors()) {
			modelMap.addAttribute("id", id);
			modelMap.addAttribute("category_detail", categoryService.getCategory(id));
			return "admin/typePro/edit";
		} else {
			category = new Category();
			category.setId_type(id);
			category.setName_type(name_type);
			int resp = categoryService.updateCategory(category);
			if (resp > 0) {
				modelMap.addAttribute("categories", categoryService.getAllCategory());
				modelMap.addAttribute("msg", "Sửa loại sản phẩm thành công !");
				return "admin/typePro/index";
			} else {
				modelMap.addAttribute("msg", "Sửa loại sản phẩm thất bại !");
				return "admin/typePro/success/AddSuccess";
			}

		}

	}

	@RequestMapping(value = "/admin/deleteType/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") int id, ModelMap modelMap) {
		int resp = categoryService.deleteCategory(id);
		modelMap.addAttribute("categories", categoryService.getAllCategory());
		if (resp > 0) {
			modelMap.addAttribute("msg", "Loại sản phẩm với id : " + id + " Xóa thành công.");
		} else {
			modelMap.addAttribute("msg", "Loại sản phẩm với id : " + id + " xóa thất bại.");
		}
		return "redirect:/admin/catePro";
	}

}
