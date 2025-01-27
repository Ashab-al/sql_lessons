-- сбрасываем счетчик
SELECT setval('currencies_id_seq', 1, false);
SELECT setval('balance_types_id_seq', 1, false);
SELECT setval('transaction_types_id_seq', 1, false);
SELECT setval('balances_id_seq', 1, false);
SELECT setval('transactions_id_seq', 1, false);
-- end

INSERT INTO currencies (name) VALUES ('Поинты'), ('Бонусы') RETURNING id, name;
    
INSERT INTO balance_types (name) VALUES
    ('Основной счет'),
    ('Бонусный счет') RETURNING id, name;
    
INSERT INTO transaction_types (name) VALUES
    ('Пополнение'),
    ('Списание') RETURNING id, name;

-- 1 - основной счет; 2 - бонусный счет
INSERT INTO balances (balances_type_id) VALUES
    (1),(2),(1),(2),(1),(2),(1),(2),(1),(2);
 
-- транзакции на пополнения счета lastval()
INSERT INTO transactions (quantity, balance_id, transaction_type_id, currency_id) VALUES
	-- пополнение основного счета
    (floor(random() * 1000), 1, 1, 1), (floor(random() * 1000), 3, 1, 1), (floor(random() * 1000), 5, 1, 1), (floor(random() * 1000), 7, 1, 1), (floor(random() * 1000), 9, 1, 1),
    (floor(random() * 1000), 1, 1, 1), (floor(random() * 1000), 3, 1, 1), (floor(random() * 1000), 5, 1, 1), (floor(random() * 1000), 7, 1, 1), (floor(random() * 1000), 9, 1, 1),
    (floor(random() * 1000), 1, 1, 1), (floor(random() * 1000), 3, 1, 1), (floor(random() * 1000), 5, 1, 1), (floor(random() * 1000), 7, 1, 1), (floor(random() * 1000), 9, 1, 1),
    (floor(random() * 1000), 1, 1, 1), (floor(random() * 1000), 3, 1, 1), (floor(random() * 1000), 5, 1, 1), (floor(random() * 1000), 7, 1, 1), (floor(random() * 1000), 9, 1, 1),
    (floor(random() * 1000), 1, 1, 1), (floor(random() * 1000), 3, 1, 1), (floor(random() * 1000), 5, 1, 1), (floor(random() * 1000), 7, 1, 1), (floor(random() * 1000), 9, 1, 1),
    
	-- пополнение бонусного счета
	(floor(random() * 1000), 2, 1, 2), (floor(random() * 1000), 4, 1, 2), (floor(random() * 1000), 6, 1, 2), (floor(random() * 1000), 8, 1, 2), (floor(random() * 1000), 10, 1, 2),
	(floor(random() * 1000), 2, 1, 2), (floor(random() * 1000), 4, 1, 2), (floor(random() * 1000), 6, 1, 2), (floor(random() * 1000), 8, 1, 2), (floor(random() * 1000), 10, 1, 2),
	(floor(random() * 1000), 2, 1, 2), (floor(random() * 1000), 4, 1, 2), (floor(random() * 1000), 6, 1, 2), (floor(random() * 1000), 8, 1, 2), (floor(random() * 1000), 10, 1, 2),
	(floor(random() * 1000), 2, 1, 2), (floor(random() * 1000), 4, 1, 2), (floor(random() * 1000), 6, 1, 2), (floor(random() * 1000), 8, 1, 2), (floor(random() * 1000), 10, 1, 2),
	(floor(random() * 1000), 2, 1, 2), (floor(random() * 1000), 4, 1, 2), (floor(random() * 1000), 6, 1, 2), (floor(random() * 1000), 8, 1, 2), (floor(random() * 1000), 10, 1, 2),
    
--     списание с основного счета
    (floor(random() * 1000), 1, 2, 1), (floor(random() * 1000), 3, 2, 1), (floor(random() * 1000), 5, 2, 1), (floor(random() * 1000), 7, 2, 1), (floor(random() * 1000), 9, 2, 1),
    (floor(random() * 1000), 1, 2, 1), (floor(random() * 1000), 3, 2, 1), (floor(random() * 1000), 5, 2, 1), (floor(random() * 1000), 7, 2, 1), (floor(random() * 1000), 9, 2, 1),
    (floor(random() * 1000), 1, 2, 1), (floor(random() * 1000), 3, 2, 1), (floor(random() * 1000), 5, 2, 1), (floor(random() * 1000), 7, 2, 1), (floor(random() * 1000), 9, 2, 1),
    (floor(random() * 1000), 1, 2, 1), (floor(random() * 1000), 3, 2, 1), (floor(random() * 1000), 5, 2, 1), (floor(random() * 1000), 7, 2, 1), (floor(random() * 1000), 9, 2, 1),
    (floor(random() * 1000), 1, 2, 1), (floor(random() * 1000), 3, 2, 1), (floor(random() * 1000), 5, 2, 1), (floor(random() * 1000), 7, 2, 1), (floor(random() * 1000), 9, 2, 1),
    
--  списание с бонусного счета
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2),
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2),
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2),
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2),
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2);
    
    -- RETURNING id, quantity, balance_id, transaction_type_id, currency_id;

-- 
INSERT INTO currencies (name) VALUES ('RUB'), ('USD'), ('STARS'), ('EUR') RETURNING id, name;
	
    
ALTER TABLE transactions ADD COLUMN created_at date;
ALTER TABLE transactions ADD COLUMN updated_at date;

UPDATE transactions
SET created_at = CURRENT_DATE - 365,
    updated_at = CURRENT_DATE - 365
where id IN (select transactions.id from transactions ORDER BY id ASC LIMIT 10)
RETURNING *;

-- 
UPDATE transactions
SET updated_at = date_add(CURRENT_DATE - 365, FORMAT('%s days', lastval() + 1)::interval), 
	created_at = date_add(CURRENT_DATE - 365, FORMAT('%s days', lastval() + 1)::interval)
where id NOT IN (select transactions.id from transactions ORDER BY id ASC LIMIT 10)
RETURNING *;

-- Выбрать все транзакции с суммой больше 100 (слишком много выводится и я сделал больше 950)
select * from transactions WHERE quantity > 950;

-- Выбрать все нулевые транзакции за прошедшую неделю
select * from transactions 
WHERE (created_at >= date_trunc('week', CURRENT_TIMESTAMP - interval '1 week') and
      created_at < date_trunc('week', CURRENT_TIMESTAMP) and quantity = 0);

-- вывести первые пять наименований валют 
select * from currencies ORDER BY id ASC
LIMIT 5;