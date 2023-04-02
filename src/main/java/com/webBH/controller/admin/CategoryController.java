package com.webBH.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webBH.model.Category;
import com.webBH.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/admin/catePro", method = RequestMethod.GET)
	public String CateProductPage(ModelMap categoryModel) {
		categoryModel.addAttribute("categories", categoryService.getAllCategory());
		return "admin/typePro/index";
	}

	@RequestMapping(value = "/admin/newType", method = RequestMethod.GET)
	public ModelAndView AddTypePage() {
		Map<String, Object> map = new HashMap<>();
		Category category = new Category();
		map.put("categories", category);
		return new ModelAndView("admin/typePro/add", map);
	}

	@RequestMapping(value = "/admin/addType")
	public String addPage(@RequestParam(value = "name_type", required = true) String name_type,
			@ModelAttribute("categories") @Valid Category category, BindingResult bindingResult,
			RedirectAttributes redirectAttributes, ModelMap categoryModel) {
		if (bindingResult.hasErrors()) {
			return "admin/typePro/add";
		} else {
			category = new Category();
			category.setName_type(name_type);
			int resp = categoryService.addCategory(category);
			if (resp > 0) {
				categoryModel.addAttribute("msg", "Category Add successfull !");
				return "admin/typePro/success/AddSuccess";
			} else {
				categoryModel.addAttribute("msg", "Category addition failed !");
				return "admin/typePro/success/AddSuccess";
			}
		}
	}

	@RequestMapping(value = "/admin/editType/{id}", method = RequestMethod.GET)
	public ModelAndView AddTypePage(@PathVariable("id") int id, ModelMap categoryModel) {
		Map<String, Object> map = new HashMap<>();
		Category category = new Category();
		map.put("categoyUp", category);
		map.put("id", id);
		map.put("category_detail", categoryService.getCategory(id));
		return new ModelAndView("admin/typePro/edit", map);
	}

	@RequestMapping(value = "/admin/editTypeCate", method = RequestMethod.POST)
	public String EditType(@RequestParam int id,
			@RequestParam(value = "name_type", required = true) String name_type, ModelMap categoryModel,
			RedirectAttributes redirectAttributes, @ModelAttribute("category_detail") @Valid Category category,
			BindingResult bindingResult) {
//
//		System.out.println(id);
//		System.out.println(name_type);
		
		if (bindingResult.hasErrors()) {
			categoryModel.addAttribute("id", id);
			categoryModel.addAttribute("category_detail", categoryService.getCategory(id));
			return "admin/typePro/edit";
		} else {
			category = new Category();
			category.setId_type(id);
			category.setName_type(name_type);
			int resp = categoryService.updateCategory(category);		
			if (resp > 0) {
				categoryModel.addAttribute("categories", categoryService.getAllCategory());
				categoryModel.addAttribute("msg", "Product Edit with successfull !");
				return "admin/typePro/index";
			} else {
				categoryModel.addAttribute("msg", "Product addition with failed !");
				return "admin/typePro/success/AddSuccess";
			}
			
		}
		
		

	}

	/*
	 * if (bindingResult.hasErrors()) { return "admin/typePro/edit"; } else {
	 * category = new Category(); category.setId_type(id);
	 * category.setName_type(name_type); int resp =
	 * categoryService.updateCategory(category); categoryModel.addAttribute("id",
	 * id); if (resp > 0) { categoryModel.addAttribute("msg", "Category with id : "
	 * + id + " updated successfully.");
	 * 
	 * categoryModel.addAttribute("categories", categoryService.getAllCategory());
	 * 
	 * return "redirect:/admin/catePro"; } else { categoryModel.addAttribute("msg",
	 * "Category with id : " + id + " updation failed."); return
	 * "admin/typePro/edit"; } }
	 */

	@RequestMapping(value = "/admin/deleteType/{id}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("id") int id, ModelMap categoryModel,
			RedirectAttributes redirectAttributes) {
		int resp = categoryService.deleteCategory(id);
		categoryModel.addAttribute("categories", categoryService.getAllCategory());
		if (resp > 0) {
			categoryModel.addAttribute("msg", "Category with id : " + id + " deleted successfully.");
		} else {
			categoryModel.addAttribute("msg", "Category with id : " + id + " deletion failed.");
		}
		return "redirect:/admin/catePro";
	}

}
