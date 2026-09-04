-- ============================================================
-- FIFA WORLD CUP 2026
-- TABLE: TEAMS
-- ============================================================
-- Purpose:
-- Stores the 48 participating FIFA World Cup 2026 teams.
-- Includes team identification and country information.
-- ============================================================

CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL UNIQUE,
    team_code CHAR(3) NOT NULL UNIQUE,
    confederation VARCHAR(20) NOT NULL,
    group_name CHAR(1) NOT NULL
);

-- ============================================================
-- TEAM DATA
-- ============================================================

INSERT INTO teams
    (team_id, team_name, team_code, confederation, group_name)
VALUES
    (1, 'Mexico', 'MEX', 'CONCACAF', 'A'),
    (2, 'South Africa', 'RSA', 'CAF', 'A'),
    (3, 'Korea Republic', 'KOR', 'AFC', 'A'),
    (4, 'Czechia', 'CZE', 'UEFA', 'A'),

    (5, 'Canada', 'CAN', 'CONCACAF', 'B'),
    (6, 'Bosnia and Herzegovina', 'BIH', 'UEFA', 'B'),
    (7, 'Qatar', 'QAT', 'AFC', 'B'),
    (8, 'Switzerland', 'SUI', 'UEFA', 'B'),

    (9, 'Brazil', 'BRA', 'CONMEBOL', 'C'),
    (10, 'Morocco', 'MAR', 'CAF', 'C'),
    (11, 'Haiti', 'HAI', 'CONCACAF', 'C'),
    (12, 'Scotland', 'SCO', 'UEFA', 'C'),

    (13, 'USA', 'USA', 'CONCACAF', 'D'),
    (14, 'Paraguay', 'PAR', 'CONMEBOL', 'D'),
    (15, 'Australia', 'AUS', 'AFC', 'D'),
    (16, 'Türkiye', 'TUR', 'UEFA', 'D'),

    (17, 'Germany', 'GER', 'UEFA', 'E'),
    (18, 'Curaçao', 'CUW', 'CONCACAF', 'E'),
    (19, 'Côte d''Ivoire', 'CIV', 'CAF', 'E'),
    (20, 'Ecuador', 'ECU', 'CONMEBOL', 'E'),

    (21, 'Netherlands', 'NED', 'UEFA', 'F'),
    (22, 'Japan', 'JPN', 'AFC', 'F'),
    (23, 'Sweden', 'SWE', 'UEFA', 'F'),
    (24, 'Tunisia', 'TUN', 'CAF', 'F'),

    (25, 'Belgium', 'BEL', 'UEFA', 'G'),
    (26, 'Egypt', 'EGY', 'CAF', 'G'),
    (27, 'IR Iran', 'IRN', 'AFC', 'G'),
    (28, 'New Zealand', 'NZL', 'OFC', 'G'),

    (29, 'Spain', 'ESP', 'UEFA', 'H'),
    (30, 'Cabo Verde', 'CPV', 'CAF', 'H'),
    (31, 'Saudi Arabia', 'KSA', 'AFC', 'H'),
    (32, 'Uruguay', 'URU', 'CONMEBOL', 'H'),

    (33, 'France', 'FRA', 'UEFA', 'I'),
    (34, 'Senegal', 'SEN', 'CAF', 'I'),
    (35, 'Iraq', 'IRQ', 'AFC', 'I'),
    (36, 'Norway', 'NOR', 'UEFA', 'I'),

    (37, 'Argentina', 'ARG', 'CONMEBOL', 'J'),
    (38, 'Algeria', 'ALG', 'CAF', 'J'),
    (39, 'Austria', 'AUT', 'UEFA', 'J'),
    (40, 'Jordan', 'JOR', 'AFC', 'J'),

    (41, 'Portugal', 'POR', 'UEFA', 'K'),
    (42, 'Congo DR', 'COD', 'CAF', 'K'),
    (43, 'Uzbekistan', 'UZB', 'AFC', 'K'),
    (44, 'Colombia', 'COL', 'CONMEBOL', 'K'),

    (45, 'England', 'ENG', 'UEFA', 'L'),
    (46, 'Croatia', 'CRO', 'UEFA', 'L'),
    (47, 'Ghana', 'GHA', 'CAF', 'L'),
    (48, 'Panama', 'PAN', 'CONCACAF', 'L');