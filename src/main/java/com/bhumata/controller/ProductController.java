package com.bhumata.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bhumata.model.Product;
import com.bhumata.service.ProductService;


@Controller
@RequestMapping("/")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	//save product
		@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
		public String saveUser(@RequestParam("name") String productName,@RequestParam("Category")String productCategory,@RequestParam("price")Double price,@RequestParam("quantity")Integer quantity,@RequestParam("desc")String description ,@RequestParam("productImg")MultipartFile productImg)throws IOException 

		
		{
			
			Product product =new Product();
			product.setProductName(productName);
			product.setProductCategory(productCategory);
			product.setPrice(price);
			product.setQuantity(quantity);
			product.setDescription(description);
			byte[] productImg1 = productImg.getBytes();
			product.setProductImg(productImg1);
			productService.saveProduct(product);
			return "productlogin";
			
			
		}
		

		// show products
		@RequestMapping(value = "/showdisplayproduct")
		public String showdisplayproduct()
		{
			return "displayproduct";
		}
		
		
		
		//show product info
		@RequestMapping(value = "/showdisplayproduct/{pId}")
		public String showdisplayproduct(@PathVariable("pId") Long pId,Model model,HttpSession session)
		{
			System.out.println(pId);
			
				Product product=new Product();
				product.setpId(pId);
				product=productService.getProduct(product);
				System.out.println(product);
				model.addAttribute("product",product);
				return "displayproduct";
		}
		
		
		@RequestMapping(value = "/showFilterproduct1")
		public String showFilterproduct1(@RequestParam("pId")int refId,Model model)
		{
			model.addAttribute("product", productService.listProductByProductNames(refId ));
				
				model.addAttribute("url", "showFilterproduct1");
				return "flower";
		}
		
		
		@RequestMapping(value = "/showFilterproduct2")
		public String showFilterproduct2(@RequestParam("pId")int refId,Model model)
		{
			model.addAttribute("product", productService.listProductByCategory(refId));
				
				model.addAttribute("url", "showFilterproduct2");
				return "flower";
		}
		
		
		@RequestMapping(value = "/showFilterproduct3")
		public String showFilterproduct3(@RequestParam("pname")String productName,Model model)
		{Product product=new Product();
		
		if(productName.isEmpty())
		{
			
			product.setProductName("Potatoes");
		}
		else
		{
			product.setProductName(productName);
		}
		model.addAttribute("product", productService.listProductByName(product));
				return "flower";
		}
		
		
		
		
		
		//filter page response with only one product name
		@RequestMapping(value="/showFilterproduct")
		public String showFilterproduct(@RequestParam("pname") String productName,RedirectAttributes ra){
			
			 ra.addAttribute("pname",productName);
			return "redirect:/showFilterproduct3";
		}
		
		
		
		
		
		//filter page response with only  product category
		
				@RequestMapping(value="/showFilterproductCategory/{pId}")
				public String showFilterproductCategory(@PathVariable("pId")int refId,RedirectAttributes ra){
					
				
					 ra.addAttribute("pId",refId);
					return "redirect:/showFilterproduct2";
				}
				
		
		
		
		//filter page response with various product names
		
				@RequestMapping(value="/showFilterProductNames1/{pId}")
				public String showFilterProductNames1(@PathVariable("pId")int refId,RedirectAttributes ra){
				 ra.addAttribute("pId",refId);
					return "redirect:/showFilterproduct1";
				}
		
				// show admin panel
				
				@RequestMapping(value = "/showAdmin")
				public String showAdmin()
				{
					return "index1";
				}
				
				
          // show buttons
				
				@RequestMapping(value = "/showButtons")
				public String showButtons()
				{
					return "buttons";
				}
		

	

}
