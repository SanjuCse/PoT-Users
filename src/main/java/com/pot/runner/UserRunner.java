package com.pot.runner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.pot.contracts.UserLogin;
import com.pot.model.User;
import com.pot.service.IUserMgmtService;

@Component
public class UserRunner implements CommandLineRunner {
	@Autowired
	private IUserMgmtService service;

	@Override
	public void run(String... args) throws Exception {
//		User user = new User();
//		user.setUserName("Sanjaya Sahu");
//		user.setAddress("Berhampur");
//		user.setDept("IT-Development");
//		user.setEmail("sanju@gmail.com");
//		user.setPassword("sanju@123");
//		service.regUser(user);
//		
//		User user2 = new User();
//		user2.setUserName("Aditya");
//		user2.setAddress("BBSR");
//		user2.setDept("IT-Development");
//		user2.setEmail("aditya@gmail.com");
//		user2.setPassword("aditya@123");
//		service.regUser(user2);
//		
//		
//		User user3 = new User();
//		user3.setUserName("Abhishek");
//		user3.setAddress("CTC");
//		user3.setDept("IT-Development");
//		user3.setEmail("abhishek@gmail.com");
//		user3.setPassword("abhishek@123");
//		service.regUser(user3);
		
		
		
//		if (user2) {
//			System.out.println("User Registration Success");
//		} else {
//			System.out.println("User Registration Failed");
//		}
		
		UserLogin login = new UserLogin();
		login.setEmail("sanju@gmail.com");
		login.setPassword("sanju@123");
		Boolean isValidUser = service.login(login);
		if (isValidUser) {
			System.out.println("Login Successfull");
		}else {
			System.out.println("Login Failed");			
		}
	}
	
//	@Override
//	public void run(String... args) throws Exception {
//		UserLogin login = new UserLogin();
//		login.setEmail("sanju@gmail.com");
//		login.setPassword("sanju@123");
//		Boolean isValidUser = service.login(login);
//		if (isValidUser) {
//			System.out.println("Login Successfull");
//		}else {
//			System.out.println("Login Failed");			
//		}
//	}
}
