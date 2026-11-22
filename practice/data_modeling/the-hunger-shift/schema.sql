CREATE TABLE orders (
    order_id INT,
    order_date TIMESTAMP,
    city VARCHAR,
    PRIMARY KEY (order_id)
);

CREATE TABLE dishes (
    dish_id INT,
    dish_name VARCHAR,
    PRIMARY KEY (dish_id)
);

CREATE TABLE order_dish (
    dish_id INT,
    order_id INT,
    PRIMARY KEY (dish_id, order_id)
);

ALTER TABLE order_dish
    ADD FOREIGN KEY (dish_id) REFERENCES dishes (dish_id);

ALTER TABLE order_dish
    ADD FOREIGN KEY (order_id) REFERENCES orders (order_id);
