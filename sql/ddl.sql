-- Switch to the database defined in your docker-compose.yml
USE test_data_db;

-- DDL: Create the customers table

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
                           id INT NOT NULL AUTO_INCREMENT,
                           first_name VARCHAR(50) NOT NULL,
                           last_name VARCHAR(50) NOT NULL,
                           email VARCHAR(100) UNIQUE NOT NULL,
                           join_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           is_active BOOLEAN DEFAULT TRUE,
                           PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;