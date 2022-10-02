package com.example.demo.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
List<Product> findByMerchantName(String merchantName);
	
	@Query(value="select * from products where product_inventory>0",nativeQuery=true)
	List<Product> findByAvailability();
	
	@Query(value="select * from products where product_inventory=0",nativeQuery=true)
	List<Product> findByNotAvailability();

}
