-- Drops the 'items' and 'orders' tables if they exist
-- Creates a new 'items' table with attributes:
--   - name: string (255 characters), never null
--   - quantity: integer, never null, default value of 10
-- Creates a new 'orders' table with attributes:
--   - item_name: string (255 characters), never null
--   - number: integer, never null
-- Inserts some initial data into the 'items' table: apple, pineapple, pear

DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS orders;

CREATE TABLE IF NOT EXISTS items (
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 10
);

CREATE TABLE IF NOT EXISTS orders (
    item_name VARCHAR(255) NOT NULL,
    number INT NOT NULL
);

-- Insert initial data into 'items' table
INSERT INTO items (name) VALUES ("apple"), ("pineapple"), ("pear");
