package com.rong.eCommerce;

import com.rong.eCommerce.entity.Product;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

@SpringBootApplication
public class FullStackECommerceApplication {

	public static void main(String[] args) {
		SpringApplication.run(FullStackECommerceApplication.class, args);
	}


}
