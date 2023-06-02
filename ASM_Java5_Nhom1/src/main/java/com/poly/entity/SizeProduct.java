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
@Table(name = "tbl_size_product")
@Entity
public class SizeProduct extends MilkTeaBase {

	@Length(max = 50)
	private String nameSize;

	private Boolean status;
	
	@OneToMany(mappedBy = "sizeProduct")
	private List<Product> products;
}
