-- statement for use of UUIDs if required
--CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

--Drop existing Tables 
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS votes;
DROP TABLE IF EXISTS comments;

-- Create Users table
CREATE TABLE IF NOT EXISTS users 
(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)       
);

-- Create Votes table
CREATE TABLE IF NOT EXISTS votes 
(
    vote_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    vote_date DATE,
    vote_value NUMERIC
);

-- Create Comments table
CREATE TABLE IF NOT EXISTS comments (
    comment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    comment_text TEXT,
    comment_date DATE
);


INSERT INTO Users (username, email, password)
VALUES ('John Doe', 'john@example.com', 'password123'),
       ('Jane Smith', 'jane@example.com', 'password456');



