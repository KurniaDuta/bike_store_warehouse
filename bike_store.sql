CREATE DATABASE bike_store;

USE bike_store;

CREATE TABLE Dim_Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(200),
    brand_name VARCHAR(100),
    category_name VARCHAR(100),
    model_year INT,
    list_price DECIMAL(10,2)
);


CREATE TABLE Dim_Staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(150),
    phone VARCHAR(20),
    active TINYINT
);

CREATE TABLE Dim_Store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(150),
    street VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code VARCHAR(20)
);


CREATE TABLE Dim_Date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT,
    month_name VARCHAR(20)
);

CREATE TABLE Fact_Stocks (
    fact_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    store_id INT,
    product_id INT,
    staff_id INT,
    date_id INT,
    quantity INT,
    
    FOREIGN KEY (store_id) REFERENCES Dim_Store(store_id),
    FOREIGN KEY (product_id) REFERENCES Dim_Product(product_id),
    FOREIGN KEY (staff_id) REFERENCES Dim_Staff(staff_id),
    FOREIGN KEY (date_id) REFERENCES Dim_Date(date_id)
);




