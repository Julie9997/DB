use seminar_5;
/* Собрать дэшборд, в котором содержится информация о максимальной задолженности в каждом банке,
 а также средний размер процентной ставки в каждом банке в
 зависимости от сегмента и количество договоров всего по всем банкам */

SELECT OSZ, 
	MAX(OSZ) OVER (PARTITION BY tb) AS max_osz, 
	MIN(OSZ) OVER (PARTITION BY segment) AS min_osz, segment 
FROM bank;

SELECT OSZ, 
	MAX(OSZ) OVER (PARTITION BY tb, segment) AS max_osz, tb,
	MIN(OSZ) OVER (PARTITION BY segment) AS min_osz, segment 
FROM bank;

SELECT 
*, 
row_number() OVER (PARTITION BY tb ORDER BY OSZ),
rank() OVER (PARTITION BY tb ORDER BY OSZ),
dense_rank() OVER (PARTITION BY tb ORDER BY OSZ),
ntile(2) OVER (PARTITION BY tb ORDER BY OSZ)
FROM bank;