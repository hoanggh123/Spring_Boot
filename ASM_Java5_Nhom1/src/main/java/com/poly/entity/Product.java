package com.poly.entity;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tbl_product")
@Entity
public class Product extends MilkTeaBase {

	@Length(max = 50)
	private String title;

	private BigDecimal price;

	@Length(max = 250)
	private String description;

	@Length(max = 3000)
	private String detail;

	@Length(max = 250)
	private String image;

	private Boolean status;
	
	@Length(max = 3000)
	private String image_detail;
	
	@ManyToOne
	@JoinColumn(name = "fk_category_id")
	private CategoryProduct categoryProduct;
	
	@ManyToOne
	@JoinColumn(name = "fk_size_id")
	private SizeProduct sizeProduct;
	
	@OneToMany(mappedBy = "product")
	private List<ProductOrder> productOrders;
	
}
