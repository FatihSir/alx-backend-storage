-- Creates an index idx_name_first_score on the 'names' table
-- Indexes the first letter of 'name' and the 'score' column

CREATE INDEX idx_name_first_score
ON names(name(1), score);
