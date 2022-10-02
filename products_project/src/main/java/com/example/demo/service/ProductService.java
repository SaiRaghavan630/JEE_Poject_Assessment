package com.example.demo.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Product;
import com.example.demo.repo.ProductRepository;




@Service
public class ProductService {
	
	
	@Autowired
	private ProductRepository repo;
	
	public ProductService(ProductRepository repo) {
		super();
		this.repo=repo;
	}
	
	public List<Product> findAll(){
		return this.repo.findAll();
	}

	public List<Product> findByMerchantName(String merchantName) {
		// TODO Auto-generated method stub
		return this.repo.findByMerchantName(merchantName);
	}

	public List<Product> findByAvailability() {
		// TODO Auto-generated method stub
		return this.repo.findByAvailability();
	}

	public List<Product> findByNotAvailability() {
		// TODO Auto-generated method stub
		return this.repo.findByNotAvailability();
	}

	public Product add(Product entity) {
		return this.repo.save(entity);
	}

	public Product update(Product entity) {
		// TODO Auto-generated method stub
		return this.repo.save(entity);
	}


}
