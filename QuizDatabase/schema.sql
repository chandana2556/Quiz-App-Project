CREATE DATABASE IF NOT EXISTS questiondb;
USE questiondb;

CREATE TABLE question (
    id INT PRIMARY KEY,
    category VARCHAR(50),
    difficultylevel VARCHAR(50),
    option1 VARCHAR(255),
    option2 VARCHAR(255),
    option3 VARCHAR(255),
    option4 VARCHAR(255),
    question_title VARCHAR(500),
    right_answer VARCHAR(255)
);