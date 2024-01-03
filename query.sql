-- Вивести гравця з найбільшим зростом 
SELECT
    Player.player_id,
    Player.name,
    Player.age,
    Player.country,
    Player.college,
    Player.current_team,
    Parameters.height
FROM
    Player
JOIN
    Parameters ON Player.player_id = Parameters.player_id
ORDER BY
    Parameters.height DESC
LIMIT 1;

-- Вивести гравців з однієї команди
SELECT
    p1.player_id,
    p1.name,
    p1.age,
    p1.country,
    p1.college,
    p1.current_team
FROM
    Player p1
JOIN
    Player p2 ON p1.current_team = p2.current_team
             AND p1.player_id <> p2.player_id; 
			 
-- Вивести гравців рік дафту яких 2014
SELECT
    Player.player_id,
    Player.name,
    Player.age,
    Player.country,
    Player.college,
    Player.current_team,
    Draft.draft_year
FROM
    Player
JOIN
    Draft ON Player.player_id = Draft.player_id
WHERE
    Draft.draft_year = 2014;


