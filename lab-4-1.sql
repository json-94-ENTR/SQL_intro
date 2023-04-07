-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT SUM(stats.hits)
FROM players INNER JOIN stats ON players.id=stats.player_id
WHERE first_name ="Barry"
AND last_name = "Bonds"
;
-- the relationship is based on player.id in the player table and then the player.id field in the stats
--stats.player_id; this is basically saying in the stats table, the player id column (field)