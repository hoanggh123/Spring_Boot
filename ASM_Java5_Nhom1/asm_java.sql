create database ASM_Java5;
use ASM_JAVA5;
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
			select * from dbo.tbl_order

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
INSERT INTO [ASM_JAVA5].[dbo].[tbl_user]
      ([created_by]
      ,[created_date]
      ,[modified_by]
      ,[modified_date]
      ,[address]
      ,[admin]
      ,[avatar]
      ,[client]
      ,[email]
      ,[name_code]
      ,[password]
      ,[phone]
      ,[sellers]
      ,[status_activity])
VALUES
      ('User1', GETDATE(), 'Admin1', GETDATE(), 'Address1', 1, 'avatar1.jpg', 3, 'user1@example.com', 'name1', 'password1', '1234567890', 2,1),
      ('User2', GETDATE(), 'Admin1', GETDATE(), 'Address1', null, 'avatar1.jpg', 3, 'user2@example.com', 'name1', 'password1', '1234567890',null,0),
      ('User3', GETDATE(), 'Admin1', GETDATE(), 'Address1',null, 'avatar1.jpg', 3, 'user3@example.com', 'name1', 'password1', '1234567890', null,0),
      ('User4', GETDATE(), 'Admin1', GETDATE(), 'Address1', null, 'avatar1.jpg', 3, 'user4@example.com', 'name1', 'password1', '1234567890', null,1),
      ('User5', GETDATE(), 'Admin1', GETDATE(), 'Address1', null, 'avatar1.jpg', null, 'user5@example.com', 'name1', 'password1', '1234567890', 2,1),
      ('User6', GETDATE(), 'Admin1', GETDATE(), 'Address1', null, 'avatar1.jpg', null, 'user6@example.com', 'name1', 'password1', '1234567890', 2,1),
      ('User7', GETDATE(), 'Admin1', GETDATE(), 'Address1', 1, 'avatar1.jpg', null, 'user7@example.com', 'name1', 'password1', '1234567890', null,0),
      ('User8', GETDATE(), 'Admin1', GETDATE(), 'Address1', 1, 'avatar1.jpg', null, 'user8@example.com', 'name1', 'password1', '1234567890', 2,1)
      -- Add more records here with similar structure



