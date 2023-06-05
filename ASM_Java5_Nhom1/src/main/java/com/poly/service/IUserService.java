package com.poly.service;

import org.springframework.stereotype.Service;

import com.poly.entity.User;

@Service
public interface IUserService {
   
	public User findByEmailAndPassword(String name , String password);
}
