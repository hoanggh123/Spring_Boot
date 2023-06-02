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
@Table(name = "tbl_role")
@Entity
public class Role extends MilkTeaBase {
	@Length(max = 50)
	private String nameRole;

	@OneToMany(mappedBy = "role")
	private List<UserRole> userRoles;
}
