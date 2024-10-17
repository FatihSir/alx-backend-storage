-- Creates an index idx_name_first on the 'names' table
-- Only the first letter of the 'name' column is indexed

CREATE INDEX idx_name_first
ON names(name(1));
