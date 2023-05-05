INSERT INTO customer(
    customer_id,
    payment_type
)VALUES(
    2,
    'card'
);

INSERT INTO ticket(
    ticket_number,
    ticket_cost,
    theater_number,
    customer_id,
    movie_title
)VALUES(
    5,
    10,
    15,
    2,
    'Creed'
);

INSERT INTO movie(
    theater_number,
    movie_title,
    movie_time,
    movie_id
)VALUES(
    15,
    'Creed',
    '9:45',
    555
);

INSERT INTO cost(
    total_cost,
    concession_cost,
    ticket_cost
)VALUES(
    15.21,
    5.21,
    10
);

INSERT INTO concession(
    snack_id,
    concession_cost,
    payment_type,
    theater_number
)VALUES(
    7,
    5.21,
    'card',
    15
);