Create database ASM_JAVA5
USE ASM_JAVA5;
-- thêm dữ liệu category
INSERT INTO [ASM_JAVA5].[dbo].[tbl_category_product] ([created_by], [created_date], [modified_by], [modified_date], [name_code], [status], [title])
VALUES ('admin', '2023-06-02', 'admin', '2023-06-02', 'tra-sua', 1, N'Trà sữa'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'tra', 1, N'Trà'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'ca-phe', 1, N'Cà phê'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'sinh-to', 1, N'Sinh tố'),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'nuoc-ngot', 1, N'Nước ngọt');

	   select * from dbo.tbl_category_product
-- thêm dữ liệu size
INSERT INTO [ASM_JAVA5].[dbo].[tbl_size_product] ([created_by], [created_date], [modified_by], [modified_date], [name_size], [status])
VALUES ('admin', '2023-06-02', 'admin', '2023-06-02', 'M', 1),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'L', 1),
       ('admin', '2023-06-02', 'admin', '2023-06-02', 'S', 1);
	   	   select * from dbo.tbl_size_product
		   	select * from dbo.tbl_product
					   	select * from dbo.tbl_user
					   	select * from dbo.tbl_role
			select * from dbo.tbl_user_role where fk_user_id = 3


-- thêm dữ liệu product
INSERT INTO [ASM_JAVA5].[dbo].[tbl_product] ([created_by], [created_date], [modified_by], [modified_date], [description], [detail], [image], [image_detail], [price], [status], [title], [fk_category_id], [fk_size_id])
VALUES 
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 1 Description', 'Product 1 Detail', 'image1.jpg', 'image1_detail.jpg', 10.99, 1, 'Product 1', 1, 1),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 2 Description', 'Product 2 Detail', 'image2.jpg', 'image2_detail.jpg', 19.99, 1, 'Product 2', 1, 2),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 3 Description', 'Product 3 Detail', 'image3.jpg', 'image3_detail.jpg', 14.99, 1, 'Product 3', 2, 3),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 4 Description', 'Product 4 Detail', 'image4.jpg', 'image4_detail.jpg', 9.99, 0, 'Product 4', 2, 1),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 5 Description', 'Product 5 Detail', 'image5.jpg', 'image5_detail.jpg', 24.99, 0, 'Product 5', 3, 2),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 6 Description', 'Product 6 Detail', 'image6.jpg', 'image6_detail.jpg', 12.99, 1, 'Product 6', 3, 2),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 7 Description', 'Product 7 Detail', 'image7.jpg', 'image7_detail.jpg', 8.99, 1, 'Product 7', 4, 3),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 8 Description', 'Product 8 Detail', 'image8.jpg', 'image8_detail.jpg', 16.99, 1, 'Product 8', 4, 2),
('admin', '2023-06-02', 'admin', '2023-06-02', 'Product 9 Description', 'Product 9 Detail', 'image9.jpg', 'image9_detail.jpg', 11.99, 0, 'Product 9', 5, 1)


-- thêm dữ liệu user
INSERT INTO [ASM_JAVA5].[dbo].[tbl_user] ([created_by], [created_date], [modified_by], [modified_date], [address], [avatar], [email], [name_code], [password], [phone], [status_activity])
VALUES
    ('created_by_value_1', GETDATE(), 'modified_by_value_1', GETDATE(), 'address_value_1', 'avatar_value_1', 'email_value_1', '123', 'password_value_1', '090911123', 1),
    ('created_by_value_2', GETDATE(), 'modified_by_value_2', GETDATE(), 'address_value_2', 'avatar_value_2', 'email_value_2', '123', 'password_value_2', '090911123', 1),
    ('created_by_value_3', GETDATE(), 'modified_by_value_3', GETDATE(), 'address_value_3', 'avatar_value_3', 'email_value_3', '123', 'password_value_3', '090911123',1),
    ('created_by_value_4', GETDATE(), 'modified_by_value_4', GETDATE(), 'address_value_4', 'avatar_value_4', 'email_value_4', '123', 'password_value_4', '090911123', 0),
    ('created_by_value_5', GETDATE(), 'modified_by_value_5', GETDATE(), 'address_value_5', 'avatar_value_5', 'email_value_5', '123', 'password_value_5', '090911123', 1),
    ('created_by_value_6', GETDATE(), 'modified_by_value_6', GETDATE(), 'address_value_6', 'avatar_value_6', 'email_value_6', '123', 'password_value_6', '090911123', 1),
    ('created_by_value_7', GETDATE(), 'modified_by_value_7', GETDATE(), 'address_value_7', 'avatar_value_7', 'email_value_7', '123', 'password_value_7', '090911123', 1),
    ('created_by_value_8', GETDATE(), 'modified_by_value_8', GETDATE(), 'address_value_8', 'avatar_value_8', 'email_value_8', '123', 'password_value_8', '090911123', 0),
    ('created_by_value_9', GETDATE(), 'modified_by_value_9', GETDATE(), 'address_value_9', 'avatar_value_9', 'email_value_9', '123', 'password_value_9', '090911123', 0),
    ('created_by_value_10', GETDATE(), 'modified_by_value_10', GETDATE(), 'address_value_10', 'avatar_value_10', 'email_value_10', '123', 'password_value_10', '090911123', 1)


-- thêm dữ liệu role
INSERT INTO [ASM_JAVA5].[dbo].[tbl_role] ([created_by], [created_date], [modified_by], [modified_date], [name_role])
VALUES
    ('created_by_value_1', GETDATE(), 'modified_by_value_1', GETDATE(), 'ADMIN'),
    ('created_by_value_2', GETDATE(), 'modified_by_value_2', GETDATE(), 'USER'),
    ('created_by_value_3', GETDATE(), 'modified_by_value_3', GETDATE(), 'SELLER')
 
-- thêm dữ liệu user role 
INSERT INTO [ASM_JAVA5].[dbo].[tbl_user_role] ([created_by], [created_date], [modified_by], [modified_date], [fk_role_id], [fk_user_id])
VALUES
    ('created_by_value_1', GETDATE(), 'modified_by_value_1', GETDATE(), 1, 3),
    ('created_by_value_2', GETDATE(), 'modified_by_value_2', GETDATE(), 3, 3),
    ('created_by_value_3', GETDATE(), 'modified_by_value_3', GETDATE(), 2, 3),
    ('created_by_value_4', GETDATE(), 'modified_by_value_4', GETDATE(), 1, 4),
    ('created_by_value_5', GETDATE(), 'modified_by_value_5', GETDATE(), 2, 5),
    ('created_by_value_6', GETDATE(), 'modified_by_value_6', GETDATE(), 2, 6),
    ('created_by_value_7', GETDATE(), 'modified_by_value_7', GETDATE(), 2, 7),
    ('created_by_value_8', GETDATE(), 'modified_by_value_8', GETDATE(), 1, 8),
    ('created_by_value_9', GETDATE(), 'modified_by_value_9', GETDATE(), 2, 9),
    ('created_by_value_10', GETDATE(), 'modified_by_value_10', GETDATE(), 2, 10)

