use phone_shop;

# задание 2

SELECT * FROM phone
WHERE productCount > 2;

# задание 3

SELECT * FROM phone
WHERE Manufacturer = 'Samsung';

# задание 4
# 4.1
SELECT * FROM phone
WHERE productName LIKE '%Iphone%';

# 4.2
SELECT * FROM phone
WHERE productName REGEXP '[0-9]';

# 4.3
SELECT * FROM phone
WHERE productName LIKE '%8%';