CREATE DATABASE ecommerce;
USE ecommerce;
-- Customers Table
CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(30),
email VARCHAR(50) UNIQUE,
phone VARCHAR(15),
city VARCHAR(20),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Products Table
CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(30),
category VARCHAR(50),
price DECIMAL(10,2),
stock INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Orders Table
CREATE TABLE orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2),
status VARCHAR(50) DEFAULT 'Pending',
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- Order Details Table
CREATE TABLE order_details (
order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
product_id INT,
quantity INT,
price DECIMAL(10,2),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
-- Payments Table
CREATE TABLE payments (
payment_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
payment_method VARCHAR(50),
payment_status VARCHAR(50),
payment_date DATE,
FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO customers (name, email, phone, city) VALUES
('Mahima Jain', 'mahima@gmail.com', '9876543210', 'Delhi'),
('Aarav Sharma','aarav.sharma@gmail.com','9810010001','Delhi'),
('Vivaan Gupta','vivaan.gupta@gmail.com','9810010002','Mumbai'),
('Aditya Verma','aditya.verma@gmail.com','9810010003','Jaipur'),
('Vihaan Mehta','vihaan.mehta@gmail.com','9810010004','Pune'),
('Arjun Singh','arjun.singh@gmail.com','9810010005','Chennai'),
('Sai Kumar','sai.kumar@gmail.com','9810010006','Hyderabad'),
('Rohan Das','rohan.das@gmail.com','9810010008','Kolkata'),
('Kunal Jain','kunal.jain@gmail.com','9810010009','Delhi'),
('Rahul Malhotra','rahul.malhotra@gmail.com','9810010010','Delhi'),
('Neha Kapoor','neha.kapoor@gmail.com','9810010011','Mumbai'),
('Priya Sharma','priya.sharma@gmail.com','9810010012','Jaipur'),
('Ananya Gupta','ananya.gupta@gmail.com','9810010013','Pune'),
('Ishita Verma','ishita.verma@gmail.com','9810010014','Delhi'),
('Sneha Singh','sneha.singh@gmail.com','9810010015','Lucknow'),
('Pooja Mehta','pooja.mehta@gmail.com','9810010016','Ahmedabad'),
('Ritika Jain','ritika.jain@gmail.com','9810010017','Delhi'),
('Simran Kaur','simran.kaur@gmail.com','9810010018','Chandigarh'),
('Aditi Agarwal','aditi.agarwal@gmail.com','9810010019','Jaipur'),
('Nikita Bansal','nikita.bansal@gmail.com','9810010020','Delhi'),
('Manish Gupta','manish.gupta@gmail.com','9810010021','Delhi'),
('Amit Sharma','amit.sharma@gmail.com','9810010022','Mumbai'),
('Sandeep Verma','sandeep.verma@gmail.com','9810010023','Pune'),
('Rajesh Khanna','rajesh.khanna@gmail.com','9810010024','Delhi'),
('Sunil Yadav','sunil.yadav@gmail.com','9810010025','Noida'),
('Deepak Chauhan','deepak.chauhan@gmail.com','9810010026','Gurgaon'),
('Vikas Mishra','vikas.mishra@gmail.com','9810010027','Lucknow'),
('Ravi Tiwari','ravi.tiwari@gmail.com','9810010028','Kanpur'),
('Ashish Pandey','ashish.pandey@gmail.com','9810010029','Varanasi'),
('Ankit Saxena','ankit.saxena@gmail.com','9810010030','Delhi'),
('Shreya Nair','shreya.nair@gmail.com','9810010031','Kochi'),
('Meera Iyer','meera.iyer@gmail.com','9810010032','Chennai'),
('Kavya Reddy','kavya.reddy@gmail.com','9810010033','Hyderabad'),
('Divya Pillai','divya.pillai@gmail.com','9810010034','Trivandrum'),
('Anjali Menon','anjali.menon@gmail.com','9810010035','Kochi'),
('Harsh Patel','harsh.patel@gmail.com','9810010036','Ahmedabad'),
('Yash Shah','yash.shah@gmail.com','9810010037','Surat'),
('Dhruv Desai','dhruv.desai@gmail.com','9810010038','Vadodara'),
('Parth Joshi','parth.joshi@gmail.com','9810010039','Rajkot'),
('Jay Mehta','jay.mehta@gmail.com','9810010040','Ahmedabad'),
('Ritu Arora','ritu.arora@gmail.com','9810010041','Delhi'),
('Komal Arora','komal.arora@gmail.com','9810010042','Delhi'),
('Payal Khurana','payal.khurana@gmail.com','9810010043','Delhi'),
('Tanya Khanna','tanya.khanna@gmail.com','9810010044','Delhi'),
('Sakshi Batra','sakshi.batra@gmail.com','9810010045','Delhi'),
('Mohit Arora','mohit.arora@gmail.com','9810010046','Delhi'),
('Nitin Bhatia','nitin.bhatia@gmail.com','9810010047','Delhi'),
('Gaurav Sethi','gaurav.sethi@gmail.com','9810010048','Delhi'),
('Karan Oberoi','karan.oberoi@gmail.com','9810010049','Delhi'),
('Rishabh Arora','rishabh.arora@gmail.com','9810010050','Delhi');
INSERT INTO products (product_name, category, price, stock) VALUES
('HP Laptop','Electronics',55000,25),
('Dell Laptop','Electronics',60000,20),
('iPhone 13','Electronics',70000,15),
('Samsung Mobile','Electronics',25000,30),
('Nike Shoes','Fashion',4000,50),
('Adidas Shoes','Fashion',4500,40),
('Puma Shoes','Fashion',3500,45),
('Levis Jeans','Fashion',3000,60),
('Zara Dress','Fashion',5000,35),
('Saree Silk','Fashion',2500,80),
('Cotton Saree','Fashion',1500,90),
('Formal Shirt','Fashion',2000,70),
('Casual T-Shirt','Fashion',1000,100),
('Bluetooth Speaker','Electronics',3000,40),
('Headphones','Electronics',2000,60),
('Smart Watch','Electronics',5000,30),
('Tablet','Electronics',20000,25),
('Refrigerator','Electronics',30000,10),
('Microwave','Electronics',15000,15),
('Air Conditioner','Electronics',40000,8),
('Handbag','Fashion',2500,50),
('Wallet','Fashion',1200,80),
('Perfume','Fashion',3500,60),
('Makeup Kit','Fashion',4500,40),
('Sunglasses','Fashion',2000,70),
('Gaming Mouse','Electronics',1500,100),
('Keyboard','Electronics',2000,90),
('Monitor','Electronics',15000,20),
('Printer','Electronics',10000,15),
('Camera','Electronics',45000,10),
('Bed Sheet','Home',2000,60),
('Curtains','Home',2500,50),
('Dining Set','Home',15000,20),
('Sofa','Home',40000,5),
('Chair','Home',3000,30),
('Water Bottle','Home',500,200),
('Mixer Grinder','Home',4000,25),
('Ceiling Fan','Home',3500,40),
('LED TV','Electronics',50000,12),
('Power Bank','Electronics',1500,80),
('Shoes Formal','Fashion',3500,50),
('Kurti','Fashion',1800,70),
('Jacket','Fashion',4000,30),
('Watch','Fashion',5000,20),
('Backpack','Fashion',2500,60),
('Earbuds','Electronics',3000,50),
('Router','Electronics',2000,40),
('Hard Drive','Electronics',6000,25),
('Pen Drive','Electronics',800,100),
('Extension Board','Electronics',1200,70);
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1,'2025-04-01',55000,'Completed'),
(2,'2025-04-02',4000,'Completed'),
(3,'2025-04-03',70000,'Pending'),
(4,'2025-04-04',25000,'Completed'),
(5,'2025-04-05',3000,'Completed'),
(6,'2025-04-06',4500,'Pending'),
(7,'2025-04-07',3500,'Completed'),
(8,'2025-04-08',3000,'Completed'),
(9,'2025-04-09',5000,'Cancelled'),
(10,'2025-04-10',2500,'Completed'),
(11,'2025-04-11',1500,'Completed'),
(12,'2025-04-12',2000,'Pending'),
(13,'2025-04-13',1000,'Completed'),
(14,'2025-04-14',3000,'Completed'),
(15,'2025-04-15',2000,'Cancelled'),
(16,'2025-04-16',5000,'Completed'),
(17,'2025-04-17',20000,'Completed'),
(18,'2025-04-18',30000,'Pending'),
(19,'2025-04-19',15000,'Completed'),
(20,'2025-04-20',40000,'Completed'),
(21,'2025-04-21',2500,'Pending'),
(22,'2025-04-22',1200,'Completed'),
(23,'2025-04-23',3500,'Completed'),
(24,'2025-04-24',4500,'Pending'),
(25,'2025-04-25',2000,'Completed'),
(26,'2025-04-26',1500,'Completed'),
(27,'2025-04-27',2000,'Cancelled'),
(28,'2025-04-28',15000,'Completed'),
(29,'2025-04-29',10000,'Completed'),
(30,'2025-04-30',45000,'Pending'),
(31,'2025-05-01',2000,'Completed'),
(32,'2025-05-02',2500,'Pending'),
(33,'2025-05-03',15000,'Completed'),
(34,'2025-05-04',40000,'Completed'),
(35,'2025-05-05',3000,'Pending'),
(36,'2025-05-06',500,'Completed'),
(37,'2025-05-07',4000,'Completed'),
(38,'2025-05-08',3500,'Pending'),
(39,'2025-05-09',50000,'Completed'),
(40,'2025-05-10',1500,'Completed'),
(41,'2025-05-11',3500,'Pending'),
(42,'2025-05-12',1800,'Completed'),
(43,'2025-05-13',4000,'Completed'),
(44,'2025-05-14',5000,'Pending'),
(45,'2025-05-15',2500,'Completed'),
(46,'2025-05-16',3000,'Cancelled'),
(47,'2025-05-17',2000,'Pending'),
(48,'2025-05-18',6000,'Completed'),
(49,'2025-05-19',800,'Completed'),
(50,'2025-05-20',1200,'Pending');
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1,1,1,55000),(2,2,1,60000),(3,3,1,70000),(4,4,1,25000),(5,5,1,4000),
(6,6,1,4500),(7,7,1,3500),(8,8,1,3000),(9,9,1,5000),(10,10,1,2500),
(11,11,1,1500),(12,12,1,2000),(13,13,1,1000),(14,14,1,3000),(15,15,1,2000),
(16,16,1,5000),(17,17,1,20000),(18,18,1,30000),(19,19,1,15000),(20,20,1,40000),
(21,21,1,2500),(22,22,1,1200),(23,23,1,3500),(24,24,1,4500),(25,25,1,2000),
(26,26,1,1500),(27,27,1,2000),(28,28,1,15000),(29,29,1,10000),(30,30,1,45000),
(31,31,1,2000),(32,32,1,2500),(33,33,1,15000),(34,34,1,40000),(35,35,1,3000),
(36,36,1,500),(37,37,1,4000),(38,38,1,3500),(39,39,1,50000),(40,40,1,1500),
(41,41,1,3500),(42,42,1,1800),(43,43,1,4000),(44,44,1,5000),(45,45,1,2500),
(46,46,1,3000),(47,47,1,2000),(48,48,1,6000),(49,49,1,800),(50,50,1,1200);
INSERT INTO payments (order_id, payment_method, payment_status, payment_date) VALUES
(1,'UPI','Completed','2025-04-01'),
(2,'Card','Completed','2025-04-02'),
(3,'UPI','Pending','2025-04-03'),
(4,'Net Banking','Completed','2025-04-04'),
(5,'Cash','Completed','2025-04-05'),
(6,'UPI','Pending','2025-04-06'),
(7,'Card','Completed','2025-04-07'),
(8,'UPI','Completed','2025-04-08'),
(9,'Net Banking','Pending','2025-04-09'),
(10,'Cash','Completed','2025-04-10'),
(11,'UPI','Completed','2025-04-11'),
(12,'Card','Pending','2025-04-12'),
(13,'UPI','Completed','2025-04-13'),
(14,'Net Banking','Completed','2025-04-14'),
(15,'Cash','Pending','2025-04-15'),
(16,'UPI','Completed','2025-04-16'),
(17,'Card','Completed','2025-04-17'),
(18,'UPI','Pending','2025-04-18'),
(19,'Net Banking','Completed','2025-04-19'),
(20,'Cash','Completed','2025-04-20'),
(21,'UPI','Pending','2025-04-21'),
(22,'Card','Completed','2025-04-22'),
(23,'UPI','Completed','2025-04-23'),
(24,'Net Banking','Pending','2025-04-24'),
(25,'Cash','Completed','2025-04-25'),
(26,'UPI','Completed','2025-04-26'),
(27,'Card','Pending','2025-04-27'),
(28,'UPI','Completed','2025-04-28'),
(29,'Net Banking','Completed','2025-04-29'),
(30,'Cash','Pending','2025-04-30'),
(31,'UPI','Completed','2025-05-01'),
(32,'Card','Pending','2025-05-02'),
(33,'UPI','Completed','2025-05-03'),
(34,'Net Banking','Completed','2025-05-04'),
(35,'Cash','Pending','2025-05-05'),
(36,'UPI','Completed','2025-05-06'),
(37,'Card','Completed','2025-05-07'),
(38,'UPI','Pending','2025-05-08'),
(39,'Net Banking','Completed','2025-05-09'),
(40,'Cash','Completed','2025-05-10'),
(41,'UPI','Pending','2025-05-11'),
(42,'Card','Completed','2025-05-12'),
(43,'UPI','Completed','2025-05-13'),
(44,'Net Banking','Pending','2025-05-14'),
(45,'Cash','Completed','2025-05-15'),
(46,'UPI','Completed','2025-05-16'),
(47,'Card','Pending','2025-05-17'),
(48,'UPI','Completed','2025-05-18'),
(49,'Net Banking','Completed','2025-05-19'),
(50,'Cash','Pending','2025-05-20');
-- View all customers
SELECT * FROM customers;
-- View all products
SELECT * FROM products;
-- View all orders
SELECT * FROM orders;
-- Customer Order Details
SELECT c.name, o.order_id, o.order_date, o.total_amount FROM customers c JOIN orders o ON c.customer_id = o.customer_id;
-- Order Product Details
SELECT o.order_id, p.product_name, od.quantity, od.price FROM order_details od JOIN orders o ON od.order_id = o.order_id JOIN products p ON od.product_id = p.product_id;
-- Total Sales
SELECT SUM(total_amount) AS total_sales FROM orders;
-- Average Order Value
SELECT AVG(total_amount) AS avg_order FROM orders;
-- Total Customers
SELECT COUNT(*) FROM customers;
-- Revenue by City
SELECT c.city, SUM(o.total_amount) AS revenue FROM customers c JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.city;

-- Top Selling Products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Customers with Highest Spending
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Pending Payments
SELECT * FROM payments WHERE payment_status = 'Pending';

-- Low Stock Products
SELECT * FROM products WHERE stock < 20;

-- Customers who placed orders above average value
SELECT name FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE total_amount > (SELECT AVG(total_amount) FROM orders)
);
-- Top 5 Customers by Spending
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- revenue by city
SELECT c.city, SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- revenue by MONTH
SELECT MONTH(order_date) AS month, SUM(total_amount) AS revenue 
FROM orders 
GROUP BY MONTH(order_date)
ORDER BY month;

-- Order Status Summary
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;

-- END OF E-COMMERCE DATABASE PROJECT