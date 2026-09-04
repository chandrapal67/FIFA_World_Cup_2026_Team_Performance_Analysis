-- ============================================================
-- FIFA WORLD CUP 2026
-- TABLE: MANAGERS
-- ============================================================
-- Purpose:
-- Stores the manager/head coach assigned to each FIFA World
-- Cup 2026 team, including manager name and nationality.
-- ============================================================

CREATE TABLE managers (
    manager_id INT PRIMARY KEY,
    team_id INT NOT NULL UNIQUE,
    manager_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),

    FOREIGN KEY (team_id)
        REFERENCES teams(team_id)
);

-- ============================================================
-- MANAGER DATA
-- ============================================================

INSERT INTO managers
(manager_id, team_id, manager_name, nationality)
VALUES
(1,  (SELECT team_id FROM teams WHERE team_code = 'ALG'), 'Vladimir Petković', 'Switzerland'),
(2,  (SELECT team_id FROM teams WHERE team_code = 'ARG'), 'Lionel Sebastián Scaloni', 'Argentina'),
(3,  (SELECT team_id FROM teams WHERE team_code = 'AUS'), 'Tony Popovic', 'Australia'),
(4,  (SELECT team_id FROM teams WHERE team_code = 'AUT'), 'Ralf Dietrich Rangnick', 'Germany'),
(5,  (SELECT team_id FROM teams WHERE team_code = 'BEL'), 'Rudi José Garcia', 'France'),
(6,  (SELECT team_id FROM teams WHERE team_code = 'BIH'), 'Sergej Barbarez', 'Bosnia And Herzegovina'),
(7,  (SELECT team_id FROM teams WHERE team_code = 'BRA'), 'Carlo Ancelotti', 'Italy'),
(8,  (SELECT team_id FROM teams WHERE team_code = 'CPV'), 'Pedro Leitão Brito', 'Cabo Verde'),
(9,  (SELECT team_id FROM teams WHERE team_code = 'CAN'), 'Jesse Alan Marsch', 'USA'),
(10, (SELECT team_id FROM teams WHERE team_code = 'COL'), 'Nestor Gabriel Lorenzo', 'Argentina'),
(11, (SELECT team_id FROM teams WHERE team_code = 'COD'), 'Sebastien Serge Louis Desabre', 'France'),
(12, (SELECT team_id FROM teams WHERE team_code = 'CIV'), 'Emerse Fae', 'Côte D''Ivoire'),
(13, (SELECT team_id FROM teams WHERE team_code = 'CRO'), 'Zlatko Dalić', 'Croatia'),
(14, (SELECT team_id FROM teams WHERE team_code = 'CUW'), 'Dirk Nicolaas Advocaat', 'Netherlands'),
(15, (SELECT team_id FROM teams WHERE team_code = 'CZE'), 'Miroslav Koubek', 'Czech Republic'),
(16, (SELECT team_id FROM teams WHERE team_code = 'ECU'), 'Sebastián Andrés Beccacece', 'Argentina'),
(17, (SELECT team_id FROM teams WHERE team_code = 'EGY'), 'Hossam Hassan Hassanein Hassan', 'Egypt'),
(18, (SELECT team_id FROM teams WHERE team_code = 'ENG'), 'Thomas Tuchel', 'Germany'),
(19, (SELECT team_id FROM teams WHERE team_code = 'FRA'), 'Didier Claude Deschamps', 'France'),
(20, (SELECT team_id FROM teams WHERE team_code = 'GER'), 'Julian Nagelsmann', 'Germany'),
(21, (SELECT team_id FROM teams WHERE team_code = 'GHA'), 'Carlos Manuel Brito Leal de Queiroz', 'Portugal'),
(22, (SELECT team_id FROM teams WHERE team_code = 'HAI'), 'Sébastien Bernard Henri C Migné', 'France'),
(23, (SELECT team_id FROM teams WHERE team_code = 'IRN'), 'Ardeshir Ghalehnoy', 'IR Iran'),
(24, (SELECT team_id FROM teams WHERE team_code = 'IRQ'), 'Graham James Arnold', 'Australia'),
(25, (SELECT team_id FROM teams WHERE team_code = 'JPN'), 'Hajime Moriyasu', 'Japan'),
(26, (SELECT team_id FROM teams WHERE team_code = 'JOR'), 'Jamal Sellami', 'Morocco'),
(27, (SELECT team_id FROM teams WHERE team_code = 'KOR'), 'Myung Bo Hong', 'Korea Republic'),
(28, (SELECT team_id FROM teams WHERE team_code = 'MEX'), 'Javier Aguirre Onaindia', 'Mexico'),
(29, (SELECT team_id FROM teams WHERE team_code = 'MAR'), 'Mohamed Ouahbi', 'Morocco'),
(30, (SELECT team_id FROM teams WHERE team_code = 'NED'), 'Ronald Koeman', 'Netherlands'),
(31, (SELECT team_id FROM teams WHERE team_code = 'NZL'), 'Darren Shaun Bazeley', 'New Zealand'),
(32, (SELECT team_id FROM teams WHERE team_code = 'NOR'), 'Ståle Solbakken', 'Norway'),
(33, (SELECT team_id FROM teams WHERE team_code = 'PAN'), 'Thomas Christiansen Tarin', 'Spain'),
(34, (SELECT team_id FROM teams WHERE team_code = 'PAR'), 'Gustavo Julio Alfaro', 'Argentina'),
(35, (SELECT team_id FROM teams WHERE team_code = 'POR'), 'Roberto Martínez Montoliu', 'Spain'),
(36, (SELECT team_id FROM teams WHERE team_code = 'QAT'), 'Julian Lopetegui Argote', 'Spain'),
(37, (SELECT team_id FROM teams WHERE team_code = 'KSA'), 'Georgios Donis', 'Greece'),
(38, (SELECT team_id FROM teams WHERE team_code = 'SCO'), 'Stephen Clarke', 'Scotland'),
(39, (SELECT team_id FROM teams WHERE team_code = 'SEN'), 'Pape Bouna Thiaw', 'Senegal'),
(40, (SELECT team_id FROM teams WHERE team_code = 'RSA'), 'Hugo Henri Broos', 'Belgium'),
(41, (SELECT team_id FROM teams WHERE team_code = 'ESP'), 'Luis de la Fuente Castillo', 'Spain'),
(42, (SELECT team_id FROM teams WHERE team_code = 'SWE'), 'Graham Stephen Potter', 'England'),
(43, (SELECT team_id FROM teams WHERE team_code = 'SUI'), 'Murat Yakin', 'Switzerland'),
(44, (SELECT team_id FROM teams WHERE team_code = 'TUN'), 'Hervé Jean-Marie Roger Renard', 'France'),
(45, (SELECT team_id FROM teams WHERE team_code = 'TUR'), 'Vincenzo Montella', 'Italy'),
(46, (SELECT team_id FROM teams WHERE team_code = 'URU'), 'Marcelo Alberto Bielsa', 'Argentina'),
(47, (SELECT team_id FROM teams WHERE team_code = 'USA'), 'Mauricio Roberto Pochettino Trossero', 'Argentina'),
(48, (SELECT team_id FROM teams WHERE team_code = 'UZB'), 'Fabio Cannavaro', 'Italy');
