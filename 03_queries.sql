-- 03_queries.sql

USE MovieDB;

-- Retrieve movies along with their genres and directors
SELECT 
    Movies.Title, 
    Genres.GenreName, 
    Directors.Name AS DirectorName, 
    Movies.ReleaseYear, 
    Movies.Runtime 
FROM Movies
JOIN Genres ON Movies.GenreID = Genres.GenreID
JOIN Directors ON Movies.DirectorID = Directors.DirectorID;

-- Find the average rating of each movie
SELECT 
    Movies.Title, 
    AVG(Reviews.Rating) AS AverageRating 
FROM Movies
JOIN Reviews ON Movies.MovieID = Reviews.MovieID
GROUP BY Movies.Title;

-- List all movies released after the year 2000 with a runtime greater than 120 minutes
SELECT 
    Title, 
    ReleaseYear, 
    Runtime 
FROM Movies
WHERE ReleaseYear > 2000 AND Runtime > 120;