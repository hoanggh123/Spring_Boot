package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entity.User;

public interface IUserRepository extends JpaRepository<User, Integer> {

	@Query(value = "Select u from User u where u.email = :email and u.password = :password")
	public User findByEmailAndPassword(@Param("email") String email,@Param("password") String password);
}
