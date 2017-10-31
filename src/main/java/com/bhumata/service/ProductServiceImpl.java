package com.bhumata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bhumata.dao.ProductDAO;
import com.bhumata.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAO productDAO;
	public void saveProduct(Product product)
	{
		productDAO.saveProduct(product);
	}
	
	
	
	
	
	public Product getProduct(Product product) {
		return productDAO.getProduct(product);
	}
	
	public List<Product> listProductByName(Product product) {
		return productDAO.listProductByName(product);
	}
	
	
	
	

	public List<Product> listProductByCategory(int refId) {
		return productDAO.listProductByCategory(refId);
	}
	
	
	
	
	
	
	
	public List<Product>  listProductByProductNames(int refId) {
		return productDAO. listProductByProductNames(refId);
	}




	



	
}
