package com.comp.clotheweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class ClothewebApplication {

	public static void main(String[] args) {
		SpringApplication.run(ClothewebApplication.class, args);
	}

}
