CREATE TABLE balances (
    id SERIAL PRIMARY KEY,
    balances_type_id bigint NOT NULL
);

CREATE TABLE balance_types (
    id SERIAL PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
  	quantity int NOT NULL, 
    balance_id bigint NOT NULL, 
    transaction_type_id bigint NOT NULL, 
    currency_id bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);

CREATE TABLE transaction_types(
    id SERIAL PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL
);

CREATE TABLE currencies(
    id SERIAL PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL
);

