CREATE TABLE balances (
    id SERIAL PRIMARY KEY,
    balances_type_id bigint
);

CREATE TABLE balance_types (
    id SERIAL PRIMARY KEY,
    name varchar(80)
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    balance_id bigint,
    transaction_type_id bigint,
    currency_id bigint
);

CREATE TABLE transaction_types(
    id SERIAL PRIMARY KEY,
    name varchar(80)
);

CREATE TABLE currencies(
    id SERIAL PRIMARY KEY,
    name varchar(80)
);

INSERT INTO currencies (name) VALUES
    ('rub'),
    ('stars');