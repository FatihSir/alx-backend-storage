-- Creates a table 'users' with the following attributes:
-- id: integer, never null, auto-increment, and set as the primary key
-- email: string (255 characters), never null, and unique
-- name: string (255 characters)
-- country: enum of countries ('US', 'CO', 'TN'), never null, with a default value of 'US'
-- If the table already exists, the script will not fail and can be executed on any database

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
