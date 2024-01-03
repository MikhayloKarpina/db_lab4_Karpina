-- Таблиця "Player"
CREATE TABLE Player (
    player_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    country VARCHAR(255),
    college VARCHAR(255),
    current_team VARCHAR(255)
);

-- Таблиця "Draft"
CREATE TABLE Draft (
    draft_id INT PRIMARY KEY,
    player_id INT,
    draft_year INT,
    draft_round INT,
    draft_number INT,
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);

-- Таблиця "Parameters"
CREATE TABLE Parameters (
    parameters_id INT PRIMARY KEY,
    player_id INT,
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    points_per_game DECIMAL(5,2),
    assists_per_game DECIMAL(5,2),
    rebounds_per_game DECIMAL(5,2),
    FOREIGN KEY (player_id) REFERENCES Player(player_id)
);
