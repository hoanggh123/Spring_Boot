package com.poly.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_user")
@Entity
public class User extends MilkTeaBase {
  
	@Length(max = 250)
	private String email;
	@Length(max = 11)
	private String phone;
	private Boolean statusActivity;
	@Length(max = 250)
	private String avatar;
	@Length(max = 250)
	private String password;
	@Length(max = 250)
	private String address;
	@Length(max = 6)
	private String nameCode;
	
	@OneToMany(mappedBy = "user")
	private List<UserRole> userRoles;
	
	@OneToMany(mappedBy = "user")
	private List<Order> orders;
}
