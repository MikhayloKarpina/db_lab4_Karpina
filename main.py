import psycopg2

username = 'postgres'
password = '130414'
database = 'KarpinaMykhailo_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT country, COUNT(player_id) AS player_count
FROM player
GROUP BY country;
'''
query_2 = '''
SELECT college, COUNT(player_id) AS player_count
FROM player
GROUP BY college;
'''

query_3 = '''
SELECT age, 
       AVG(points_per_game) AS avg_points
FROM parameters
JOIN player ON parameters.player_id = player.player_id
GROUP BY age
ORDER BY age;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    cur.execute(query_1)
    country = []
    player_count = []

    for row in cur:
        country.append(row[0])
        player_count.append(row[1])
    
    print(country)
    print(player_count)

    cur.execute(query_2)
    college = []
    player_count = []

    for row in cur:
        college.append(row[0])
        player_count.append(row[1])

    print(college)
    print(player_count)

    cur.execute(query_3)
    age = []
    points_per_game = []

    for row in cur:
        age.append(row[0])
        points_per_game.append(round(row[1], 2))
        print(row)

    print(age)
    print(points_per_game)