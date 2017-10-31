package com.bhumata.service;

import java.util.List;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bhumata.model.Product;

public interface ProductService {
	
	public void saveProduct(Product product);

	public Product getProduct(Product product);
	
	public List<Product> listProductByName(Product product);
	
	public List<Product> listProductByCategory(int refId);
	public List<Product> listProductByProductNames(int refId);
	
	
	
	
}
