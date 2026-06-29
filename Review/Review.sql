CREATE TABLE product(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50) NOT NULL
);

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
p_id INT REFERENCES product(product_id),
avail_stock INT,
loc VARCHAR(255) NOT NULL
);

INSERT INTO product (product_name)
VALUES
('Laptop'),
('Mouse'),
('Keyboard'),
('Monitor'),
('Printer'),
('Scanner'),
('Speaker'),
('Webcam'),
('Hard Disk'),
('UPS');

INSERT INTO orders (p_id, avail_stock, loc)
VALUES
(1, 850, 'Agra'),
(2, 920, 'Firozabad'),
(3, 1100, 'Delhi'),
(4, 875, 'Kanpur'),
(5, 980, 'Lucknow'),
(6, 1200, 'Aligarh'),
(7, 1050, 'Haryana'),
(8, 890, 'Gurugram'),
(9, 1150, 'Mumbai'),
(10, 1000, 'Hyderabad');

SELECT product_name, avail_stock 
FROM product AS p INNER JOIN orders AS o ON p.product_id = o.order_id
ORDER BY avail_stock;
