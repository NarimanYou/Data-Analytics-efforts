Customer:
customer_id
address
number

CREATE OR REPLACE FUNCTION customer_info(_customer_id INTEGER, _address VARCHAR, _phone_number VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id, address, phone_number)
	VALUES(_customer_id, _address, _phone_number);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT customer_info(1, '123 Main Street, Chicago, IL', '111-222-3333');

INSERT INTO customer (customer_id, address, phone_number)
VALUES (2, '222 Main Street, Chicago, IL', '222-333-4444');



CREATE or REPLACE PROCEDURE sold(
	salesperson_id INTEGER,
	carSold INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE salesperson
	SET sold_cars = new_car_id + used_car_id
	WHERE 


INSERT INTO customer_car(customer_car_id, service_invoice_id, service_history, mechanic_id)
VALUES (001, 01, 'No service history', 201)

INSERT INTO customer_car(customer_car_id, service_invoice_id, service_history, mechanic_id)
VALUES (002, 02, 'Installed exhaust for customer', 201);

INSERT INTO dealership(dealership_id, new_car_id, used_car_id, customer_car_id, service_history, customer_id)
VALUES(500, 1001, 0001, 1, 'Oil change completed', 20)

INSERT INTO dealership(dealership_id, new_car_id, used_car_id, customer_car_id, service_history, customer_id)
VALUES(501, 104, 0002, 2, 'Fluid check completed', 20)


CREATE OR REPLACE FUNCTION invoice_add(_new_car_invoice_id INTEGER, _service_invoice_id INTEGER, _customer_car_id INTEGER, _used_car_id INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO invoice(new_car_invoice_id, service_invoice_id, customer_car_id, used_car_id)
	VALUES(_new_car_invoice_id, _service_invoice_id, _customer_car_id, _used_car_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT invoice_add(0001, 20, 2, 100)

CREATE PROCEDURE insert_into_all_tables(salesperson, service, used_car)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO salesperson(salesperson_id, sold_cars, new_car_invoice_id, used_car_invoice_id)
    VALUES (501,10,0001,102);

    INSERT INTO service(service_invoice_id, service_required, service_completed, service_history, mechanic_id)
    VALUES (20, 'Oil change required', 'Oil change completed', 'No service history', 01);

    INSERT INTO used_car(used_car_id, used_car_invoice_id, used_car_make, used_car_model, used_car_year, used_car_color, service_history)
    VALUES (101, 91, 'Honda', 'Civic', 2020, 'White', 'No service history');
END;
$$

INSERT INTO salesperson(salesperson_id, sold_cars, new_car_invoice_id, used_car_invoice_id)
VALUES(501, 10, 0001, 102)

INSERT INTO used_car(used_car_id,
    used_car_invoice_id,
    used_car_make,
    used_car_model,
    used_car_year,
    used_car_color,
    service_history)
VALUES('0101',
	   23,
	  'Honda',
	  'Civic',
	  2020,
	  'White',
	  'No service history')