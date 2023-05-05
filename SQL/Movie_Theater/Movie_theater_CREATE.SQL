CREATE TABLE IF NOT EXISTS customer(
    customer_id SERIAL PRIMARY KEY,
    payment_type VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS ticket(
    ticket_number SERIAL PRIMARY KEY,
    ticket_cost NUMERIC(10,2),
    theater_number INTEGER,
    customer_id INTEGER,
    movie_title VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS movie(
    movie_id SERIAL PRIMARY KEY,
    movie_time VARCHAR(10),
    movie_title VARCHAR(100),
    theater_number INTEGER
);

CREATE TABLE IF NOT EXISTS cost(
    total_cost SERIAL PRIMARY KEY,
    concession_cost NUMERIC(10,2),
    ticket_cost NUMERIC(10,2)
);

CREATE TABLE IF NOT EXISTS concession(
    snack_id PRIMARY SERIAL KEY,
    concession_cost NUMERIC(10,2),
    payment_type VARCHAR(15),
    theater_number INTEGER
);