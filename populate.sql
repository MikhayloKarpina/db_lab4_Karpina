-- Додавання даних до таблиці "Player"
INSERT INTO Player (player_id, name, age, country, college, current_team)
VALUES
    (1, 'Joel Embiid', 29, 'Cameroon', 'Kansas', 'PHI'),
    (2, 'Jimmy Butler', 33, 'USA', 'Marquette', 'MIA'),
    (3, 'Jayson Tatum', 25, 'USA', 'Duke', 'BOS'),
    (4, 'Marcus Smart', 29, 'USA', 'Oklahoma State', 'BOS'),
    (5, 'Kevin Durant', 34, 'USA', 'Texas', 'PHX');

-- Додавання даних до таблиці "Draft"
INSERT INTO Draft (draft_id, player_id, draft_year, draft_round, draft_number)
VALUES
    (1, 1, 2014, 1, 3),
    (2, 2, 2011, 1, 30),
    (3, 3, 2017, 1, 3),
    (4, 4, 2014, 1, 6),
    (5, 5, 2007, 1, 2);

-- Додавання даних до таблиці "Parameters"
INSERT INTO Parameters (parameters_id, player_id, weight, height, points_per_game, assists_per_game, rebounds_per_game)
VALUES
    (1, 1, 127, 213, 33, 2, 10),
    (2, 2, 104, 201, 23, 5, 6),
    (3, 3, 95, 200, 30, 8, 8),
    (4, 4, 100, 191, 11, 6, 3),
    (5, 5, 109, 208, 29, 5, 6);
