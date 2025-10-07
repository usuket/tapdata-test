-- Switch to the database defined in your docker-compose.yml
USE test_data_db;

show databases ;
-- Shows whether binary logging is enabled (the selected setting)
SHOW VARIABLES LIKE 'log_bin';

-- Shows the unique identifier of the server
SHOW VARIABLES LIKE 'server_id';

-- Shows the format used for the binary log (should be ROW for CDC)
SHOW VARIABLES LIKE 'binlog_format';

-- Shows how long binary logs are kept before being automatically purged
SHOW VARIABLES LIKE 'expire_logs_days';

-- Shows the default authentication plugin (for client compatibility)
SHOW VARIABLES LIKE 'default_authentication_plugin';