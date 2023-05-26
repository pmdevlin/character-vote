-- statement for use of UUIDs if required
--CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

--Drop existing Tables 
DROP TABLE IF EXISTS Users;
--DROP TABLE IF EXISTS Characters;
DROP TABLE IF EXISTS Votes;
DROP TABLE IF EXISTS Comments;


-- Create Users table
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    registration_date DATE,
    -- Add other user-related fields as needed
);

-- Create Characters table
-- CREATE TABLE Characters (
--     character_id SERIAL PRIMARY KEY,
--     character_name VARCHAR(255),
--     movie_name VARCHAR(255),
    -- Add other character-related fields as needed
-- );

-- Create Votes table
CREATE TABLE Votes (
    vote_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    character_id INT REFERENCES Characters(character_id),
    vote_date DATE,
    vote_value NUMERIC,
    -- Add other vote-related fields as needed
);

-- Create Comments table
CREATE TABLE Comments (
    comment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    character_id INT REFERENCES Characters(character_id),
    comment_text TEXT,
    comment_date DATE,
    -- Add other comment-related fields as needed
);