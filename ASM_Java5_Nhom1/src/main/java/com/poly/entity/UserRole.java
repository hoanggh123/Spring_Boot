package com.poly.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_user_role")
@Entity
public class UserRole extends MilkTeaBase {

	@ManyToOne
	@JoinColumn(name = "fk_user_id")
	private User user;

	@ManyToOne
	@JoinColumn(name = "fk_role_id")
	private Role role;
}
