INSERT INTO currencies (name) VALUES
    ('Поинты'),
    ('Бонусы') RETURNING id, name;
    
INSERT INTO balance_types (name) VALUES
    ('Основной счет'),
    ('Бонусный счет') RETURNING id, name;
    
INSERT INTO transaction_types (name) VALUES
    ('Пополнение'),
    ('Списание') RETURNING id, name;

-- 1 - основной счет; 2 - бонусный счет
INSERT INTO balances (balances_type_id) VALUES
    (1),(2),(1),(2),(1),(2),(1),(2),(1),(2);
 
-- транзакции на пополнения счета
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
    (floor(random() * 1000), 2, 2, 2), (floor(random() * 1000), 4, 2, 2), (floor(random() * 1000), 6, 2, 2), (floor(random() * 1000), 8, 2, 2), (floor(random() * 1000), 10, 2, 2)
    
    RETURNING id, quantity, balance_id, transaction_type_id, currency_id;