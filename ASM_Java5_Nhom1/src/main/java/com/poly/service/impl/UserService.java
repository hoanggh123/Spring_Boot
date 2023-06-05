package com.poly.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.User;
import com.poly.repository.IUserRepository;
import com.poly.service.IUserService;

@Service
public class UserService implements IUserService {

	@Autowired
	private IUserRepository userRepository;

	@Override
	public User findByEmailAndPassword(String name, String password) {
		User user = userRepository.findByEmailAndPassword(name, password);
		if (user != null) {
			return user;
		}
		return null;
	}

}
