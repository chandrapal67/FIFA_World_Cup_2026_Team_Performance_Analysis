-- ============================================================
-- FIFA WORLD CUP 2026
-- TABLE: VENUES
-- ============================================================
-- Purpose:
-- Stores stadium/venue information for FIFA World Cup 2026
-- matches, including location, capacity and opening year.
-- ============================================================


CREATE TABLE venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    opened_year YEAR
);


-- ============================================================
-- VENUE DATA
-- ============================================================

INSERT INTO venues
    (venue_id, venue_name, city, country, capacity, opened_year)
VALUES
    (1, 'Toronto Stadium', 'Toronto', 'Canada', 43036, 2007),
    (2, 'BC Place Vancouver', 'Vancouver', 'Canada', 52497, 1983),
    (3, 'Mexico City Stadium', 'Mexico City', 'Mexico', 80824, 1966),
    (4, 'Guadalajara Stadium', 'Zapopan', 'Mexico', 45664, 2010),
    (5, 'Estadio Monterrey', 'Guadalupe', 'Mexico', 51243, 2015),
    (6, 'Atlanta Stadium', 'Atlanta', 'USA', 68239, 2017),
    (7, 'Boston Stadium', 'Foxborough', 'USA', 64146, 2002),
    (8, 'Dallas Stadium', 'Arlington', 'USA', 70649, 2009),
    (9, 'Houston Stadium', 'Houston', 'USA', 68777, 2002),
    (10, 'Kansas City Stadium', 'Kansas City', 'USA', 69045, 1972),
    (11, 'Los Angeles Stadium', 'Inglewood', 'USA', 70492, 2020),
    (12, 'Miami Stadium', 'Miami Gardens', 'USA', 64478, 1987),
    (13, 'New York New Jersey Stadium', 'East Rutherford', 'USA', 80663, 2010),
    (14, 'Philadelphia Stadium', 'Philadelphia', 'USA', 68324, 2003),
    (15, 'San Francisco Bay Area Stadium', 'Santa Clara', 'USA', 68827, 2014),
    (16, 'Seattle Stadium', 'Seattle', 'USA', 66925, 2002);