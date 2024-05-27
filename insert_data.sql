-- 02_insert_data.sql

USE MovieDB;

INSERT INTO Genres (GenreName) VALUES ('Action'), ('Comedy'), ('Drama');

INSERT INTO Directors (Name) VALUES ('Christopher Nolan'), ('Quentin Tarantino');

INSERT INTO Movies (Title, DirectorID, GenreID, ReleaseYear, Runtime) 
VALUES 
('Inception', 1, 1, 2010, 148),
('Pulp Fiction', 2, 3, 1994, 154);

INSERT INTO Actors (Name, BirthDate) VALUES 
('Leonardo DiCaprio', '1974-11-11'),
('Samuel L. Jackson', '1948-12-21');

INSERT INTO Reviews (MovieID, Rating, ReviewText, ReviewDate) 
VALUES 
(1, 5, 'Amazing movie with mind-bending concepts.', '2022-01-15'),
(2, 4, 'A cult classic with memorable performances.', '2022-02-20');