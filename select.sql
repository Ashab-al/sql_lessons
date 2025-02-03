-- Вывести все балансы с каким-либо существующим типом
select * from balances 
where balances.balances_type_id = (select balance_types.id from balance_types 
									where balance_types.name = 'Основной счет');
                                    
-- Вывести информацию по балансам, включая наименование типа баланса
select id, 
	(select name 
     from balance_types 
     where balance_types.id = balances.balances_type_id) AS balance_types 
from balances;

-- Вывести балансы, по которым были операции только в рублях
select * from balances 
where
NOT EXISTS (
        select transactions.id from transactions 
        where 
        transactions.currency_id IN (
                select currencies.id from currencies
                where currencies.name != 'RUB'
                ) and transactions.balance_id = balances.id
                );

-- Вывести рублевые транзакции заданного типа по балансам заданного типа
select * from transactions
where 
transactions.currency_id = (select currencies.id from currencies where currencies.name = 'RUB')
and transactions.transaction_type_id = (select transaction_types.id from transaction_types where transaction_types.name = 'Пополнение')
and transactions.balance_id IN (
	select balances.id from balances where balances.balances_type_id = (
    	select balance_types.id from balance_types where balance_types.name = 'Основной счет'
    )
);
