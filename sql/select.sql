-- Switch to the database defined in your docker-compose.yml
USE test_data_db;

select * from test_data_db.customers;

select count(*) from test_data_db.customers;
# 319768