CREATE DATABASE bike_store;

USE bike_store;

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(200),
    brand_name VARCHAR(100),
    category_name VARCHAR(100),
    model_year INT,
    list_price DECIMAL(10,2)
);
