-- Написать скрипт на удаление какого-либо типа транзакций
DELETE FROM transactions USING transaction_types
WHERE transactions.transaction_type_id = transaction_types.id and transaction_types.name = 'Пополнение';

-- Написать скрипт на удаление последних пяти транзакций по заданному счету
DELETE FROM transactions 
WHERE id IN (select id from transactions 
           where transactions.balance_id = 5
          	ORDER BY id DESC LIMIT 5
          )