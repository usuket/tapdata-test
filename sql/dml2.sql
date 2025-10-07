-- DML: Insert dummy data
USE test_data_db;

INSERT INTO customers (first_name, last_name, email, is_active)
VALUES ('Eve', 'Adams', 'eve.adams@example.com', TRUE),
       ('Frank', 'Taylor', 'frank.taylor@example.com', TRUE),
       ('Grace', 'Miller', 'grace.miller@example.com', TRUE),
       ('Henry', 'Wilson', 'henry.wilson@example.com', FALSE),
       ('Ivy', 'Moore', 'ivy.moore@example.com', TRUE),
       ('Jack', 'Davis', 'jack.davis@example.com', TRUE),
       ('Karen', 'Garcia', 'karen.garcia@example.com', FALSE),
       ('Leo', 'Rodriguez', 'leo.rodriguez@example.com', TRUE),
       ('Mia', 'Martinez', 'mia.martinez@example.com', TRUE),
       ('Noah', 'Hernandez', 'noah.hernandez@example.com', TRUE);