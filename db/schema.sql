
DROP DATABASE IF EXISTS workouts_db;
CREATE DATABASE workouts_db;
USE workouts_db;
DROP TABLE IF EXISTS users;
CREATE TABLE users

(
    id INT NOT NULL AUTO_INCREMENT,
    user_name VARCHAR (100),
    sex BOOLEAN,
    age INT,
    weight INT,
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS workouts_cardio;
CREATE TABLE workouts_cardio
(
    id INT NOT NULL AUTO_INCREMENT,
    workout VARCHAR (100) NOT NULL,
    duration INT NOT NULL,
    calories INT NOT NULL,
    video VARCHAR (100) NOT NULL,
    users_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);
DROP TABLE IF EXISTS workouts_resistance;
CREATE TABLE workouts_resistance
(
    id INT NOT NULL AUTO_INCREMENT,
    workout VARCHAR (100) NOT NULL,
    duration INT NOT NULL,
    calories INT NOT NULL,
    video VARCHAR (100) NOT NULL,
    users_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id)
)