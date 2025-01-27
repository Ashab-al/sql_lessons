-- Вывести все балансы с каким-либо существующим типом
select * from balances;

-- Вывести информацию по балансам, включая наименование типа баланса
select id, 
	(select name 
     from balance_types 
     where balance_types.id = balances.balances_type_id) AS balance_types 
from balances;

-- Вывести балансы, по которым были операции только в рублях
select * from balances 
	where 
      (select count(*)
          from transactions 
      		where transactions.balance_id = balances.id and transactions.currency_id = 3)
    = 
      (select count(*)
          from transactions 
      		where transactions.balance_id = balances.id);

-- Вывести рублевые транзакции заданного типа по балансам заданного типа
select * from transactions 
	where transactions.id IN (
    	select balances.id 
      	from balances 
      		where balances.balances_type_id = 1
    
    ) and 
    transactions.transaction_type_id = 1
    ;
    	
		     