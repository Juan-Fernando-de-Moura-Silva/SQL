SELECT * FROM Filmes.Movies;

SELECT
  Movie_name,
  imdb_rating,
  year_released
FROM Filmes.Movies;

SELECT
  Movie_name,
  box_office
FROM Filmes.Movies
WHERE box_office > 300;

SELECT
  Movie_name,
  imdb_rating,
  year_released
FROM Filmes.Movies
WHERE Movie_name LIKE '%Godfather%';

SELECT
  Movie_name,
  imdb_rating,
  year_released
FROM Filmes.Movies
WHERE year_released < 2001 AND imdb_rating > 9;

SELECT
  Movie_name,
  imdb_rating,
  year_released
FROM Filmes.Movies
WHERE year_released > 1991
ORDER BY year_released ASC;

SELECT
  language,
  COUNT(*) AS number_of_movies
FROM Filmes.Movies
GROUP BY language;

SELECT
  year_released,
  language,
  COUNT(*) AS number_of_movies
FROM Filmes.Movies
GROUP BY year_released, language
ORDER BY year_released ASC;

SELECT
  language,
  AVG(budget) AS movie_budget
FROM Filmes.Movies
GROUP BY language
HAVING AVG(budget) > 50;

SELECT
  Movie_name,
  company_name
FROM Filmes.company dc
JOIN Filmes.Movies m
ON dc.id_company = m.distribution_company_id;
