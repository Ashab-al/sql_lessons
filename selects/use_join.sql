-- Составить запрос на получение сальдо по счету в каждой валюте
select 
balances.id as balances_id, 
balance_types.name as balance_types, 
currencies.name as currencies,
(select sum(transactions.quantity) from transactions where balances.id = transactions.balance_id
	and transactions.transaction_type_id = (
		select transaction_types.id from transaction_types where transaction_types.name = 'Пополнение'
      ) 
) -  
(select sum(transactions.quantity) from transactions where balances.id = transactions.balance_id
	and transactions.transaction_type_id = (
		select transaction_types.id from transaction_types where transaction_types.name = 'Списание'
      ) 
) as saldo
from balances 
inner join balance_types ON  balance_types.id = balances.balances_type_id
inner join transactions ON transactions.balance_id = balances.id
inner join transaction_types ON transaction_types.id = transactions.transaction_type_id
inner join currencies ON currencies.id = transactions.currency_id
GROUP BY balances.id, balance_types.name, currencies.name
ORDER BY balances_id;

-- Составить запрос на получение количества транзакций по каждому счету в каждой валюте
select 
balances.id as balance_id,
balance_types.name as balance_name,
currencies.name as currency,
count(transactions.id) as transactions_count
from transactions
inner join balances ON balances.id = transactions.balance_id 
inner join currencies ON transactions.currency_id = currencies.id
inner join balance_types ON balance_types.id = balances.balances_type_id
GROUP BY balances.id, balance_types.name, currencies.name
ORDER BY balances.id;

-- Составить запрос на получение суммарного прихода в каждой валюте
select
currencies.id as id,
currencies.name as currencies,
sum(transactions.quantity)
from currencies
inner join transactions ON transactions.currency_id = currencies.id
WHERE transactions.transaction_type_id = (select transaction_types.id from transaction_types where transaction_types.name = 'Пополнение')
GROUP BY currencies.name, currencies.id