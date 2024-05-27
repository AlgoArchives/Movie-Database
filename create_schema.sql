-- 01_create_schema.sql

CREATE DATABASE MovieDB;

USE MovieDB;

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    DirectorID INT,
    GenreID INT,
    ReleaseYear INT,
    Runtime INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    BirthDate DATE
);

CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(50) NOT NULL
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT,
    Rating INT,
    ReviewText TEXT,
    ReviewDate DATE,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);