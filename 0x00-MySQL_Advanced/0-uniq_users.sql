-- Creates a 'users' table with the following specifications:
-- id: integer, auto-incremented, primary key, and cannot be null
-- email: string (maximum 255 characters), must be unique and cannot be null
-- name: string (maximum 255 characters)
-- The script ensures it does not fail if the table already exists and can be run on any database

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255)
);
