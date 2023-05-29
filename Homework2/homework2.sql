use new_schema;

# 1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
CREATE TABLE sales 
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    bucket INT NOT NULL
);

INSERT INTO sales (order_date, bucket)
VALUES
	("2021-01-01", 154),
    ("2021-01-02", 236),
    ("2021-01-03", 95),
    ("2021-01-04", 102),
    ("2021-01-05", 310);

# 2. Разделите  значения поля “bucket” на 3 сегмента: меньше 100(“Маленький заказ”), 100-300(“Средний заказ”) и больше 300 (“Большой заказ”)
SELECT *,
CASE
	WHEN bucket < 100
		THEN "Маленький заказ"
	WHEN bucket BETWEEN 100 AND 300
		THEN "Средний заказ"
	WHEN bucket > 300
		THEN "Большой заказ"
END AS order_size
FROM sales;

# 3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
CREATE TABLE orders
(
	orderid INT PRIMARY KEY AUTO_INCREMENT,
    emplloyeeid VARCHAR(4) NOT NULL,
    amount DECIMAL NOT NULL,
    orderstatus VARCHAR(10)
);

INSERT INTO orders (emplloyeeid, amount, orderstatus)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED'),
('e04', 99.99, 'OPEN');

SELECT orderid, orderstatus,
CASE
	WHEN orderstatus = 'OPEN'
		THEN 'Order is in open state.'
	WHEN orderstatus = 'CLOSED'
		THEN 'Order is closed.'
	WHEN orderstatus = 'CANCELLED'
		THEN 'Order is cancelled.'
END AS order_summary
FROM orders;