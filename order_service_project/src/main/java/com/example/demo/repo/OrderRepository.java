package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {
List<Order> findByOrderId(int orderId);
	
	List<Order> findByOrderPerson(String orderPerson);

}
