package com.huigwon.profile;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Myprofile20221124HuigwonApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(Myprofile20221124HuigwonApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(Myprofile20221124HuigwonApplication.class);
	}

}
