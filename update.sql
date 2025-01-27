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
