-- DML: Insert dummy data
USE test_data_db;

INSERT INTO customers (first_name, last_name, email, is_active)
VALUES ('Alice', 'Smith', 'alice.smith@example.com', TRUE),
       ('Bob', 'Johnson', 'bob.johnson@example.com', TRUE),
       ('Charlie', 'Brown', 'charlie.brown@example.com', FALSE),
       ('Diana', 'Prince', 'diana.prince@example.com', TRUE);