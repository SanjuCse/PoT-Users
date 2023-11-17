package com.pot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pot.contracts.UserLogin;
import com.pot.model.User;
import com.pot.repo.UserRepo;

@Service
public class UserMgmtImpl implements IUserMgmtService {
	@Autowired
	private UserRepo repo;

	@Override
	public Boolean login(UserLogin login) {
		if (login != null) {
			String email = login.getEmail();

			List<User> listUsers = repo.findByEmail(email);
			List<User> listValidUsers = repo.findByEmailAndPassword(login.getEmail(), login.getPassword());
			if (listUsers.size() != 0 && listUsers.get(0) != null) {
				if (listValidUsers.size() != 0 && listValidUsers.get(0) != null) {
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public Boolean regUser(User user) {
		if (user != null) {
			User user2 = repo.save(user);
			return true;
		}
		return false;
	}

	@Override
	public List<User> getAllUsers() {
		return repo.findAll();
	}

	@Override
	public User getEmployeeById(int id) {
		return repo.getById(id);
	}

	@Override
	public Boolean deleteEmployeeByEno(int id) {
		repo.deleteById(id);
		return true;
	}

}
