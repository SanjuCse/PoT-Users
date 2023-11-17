package com.pot.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pot.model.User;

public interface UserRepo extends JpaRepository<User, Integer> {
	List<User> findByEmail(String email);

	List<User> findByEmailAndPassword(String email, String password);
}
