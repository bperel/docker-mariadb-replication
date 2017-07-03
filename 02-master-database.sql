CREATE DATABASE IF NOT EXISTS test;
USE test;
CREATE TABLE IF NOT EXISTS names(id varchar(36), insert_date datetime);
INSERT INTO names (id, insert_date) VALUES (uuid(), NOW());
