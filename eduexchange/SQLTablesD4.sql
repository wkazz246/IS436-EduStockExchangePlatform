-- Active: 1731442246085@@127.0.0.1@3306@EdustockDB

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    funds REAL DEFAULT 0.0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE stocks (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    symbol VARCHAR(255) NOT NULL UNIQUE,
    company_name VARCHAR(255) NOT NULL,
    current_price REAL,
    last_updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE portfolio (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    stock_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    purchase_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (stock_id) REFERENCES stocks(id)
);

CREATE TABLE transactions (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    stock_id INTEGER NOT NULL,
    trade_type VARCHAR(4) CHECK(trade_type IN ('buy', 'sell')) NOT NULL,
    quantity INTEGER NOT NULL,
    price_per_unit REAL NOT NULL,
    total_amount REAL NOT NULL,
    trade_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (stock_id) REFERENCES stocks(id)
);

CREATE TABLE stock_prices (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    stock_id INTEGER NOT NULL,
    price REAL NOT NULL,
    recorded_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stocks(id)
);




INSERT INTO users (username, password_hash, email, funds, created_at) 
VALUES ('alice', 'hashedpasswordA', 'alice@example.com', 1200.50, '2024-11-10 09:00:00');

INSERT INTO users (username, password_hash, email, funds, created_at) 
VALUES ('bob', 'hashedpasswordB', 'bob@example.com', 3500.00, '2024-11-10 10:00:00');

INSERT INTO users (username, password_hash, email, funds, created_at) 
VALUES ('carol', 'hashedpasswordC', 'carol@example.com', 500.75, '2024-11-10 11:00:00');

INSERT INTO stocks (symbol, company_name, current_price, last_updated) 
VALUES ('TSLA', 'Tesla, Inc.', 700.00, '2024-11-10 12:00:00');

INSERT INTO stocks (symbol, company_name, current_price, last_updated) 
VALUES ('AMZN', 'Amazon.com, Inc.', 3300.00, '2024-11-10 12:30:00');

INSERT INTO stocks (symbol, company_name, current_price, last_updated) 
VALUES ('GOOGL', 'Alphabet Inc.', 2800.00, '2024-11-10 13:00:00');

INSERT INTO portfolio (user_id, stock_id, quantity, purchase_date) 
VALUES (1, 1, 3, '2024-11-10 13:30:00');

INSERT INTO portfolio (user_id, stock_id, quantity, purchase_date) 
VALUES (2, 2, 5, '2024-11-10 14:00:00');

INSERT INTO portfolio (user_id, stock_id, quantity, purchase_date) 
VALUES (3, 3, 2, '2024-11-10 14:30:00');

INSERT INTO transactions (user_id, stock_id, trade_type, quantity, price_per_unit, total_amount, trade_date) 
VALUES (1, 1, 'buy', 3, 700.00, 2100.00, '2024-11-10 15:00:00');

INSERT INTO transactions (user_id, stock_id, trade_type, quantity, price_per_unit, total_amount, trade_date) 
VALUES (2, 2, 'sell', 2, 3300.00, 6600.00, '2024-11-10 15:30:00');

INSERT INTO transactions (user_id, stock_id, trade_type, quantity, price_per_unit, total_amount, trade_date) 
VALUES (3, 3, 'buy', 1, 2800.00, 2800.00, '2024-11-10 16:00:00');

INSERT INTO stock_prices (stock_id, price, recorded_at) 
VALUES (1, 700.00, '2024-11-10 10:00:00');

INSERT INTO stock_prices (stock_id, price, recorded_at) 
VALUES (2, 3300.00, '2024-11-10 10:30:00');

INSERT INTO stock_prices (stock_id, price, recorded_at) 
VALUES (3, 2800.00, '2024-11-10 11:00:00');

