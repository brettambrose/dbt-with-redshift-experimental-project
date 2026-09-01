
WITH monthly_songplay_counts AS (
SELECT
 sp.song_id,
 t.month,
 COUNT(1) AS monthly_play_total_ct
FROM dwh.sandbox.songplays sp
INNER JOIN dwh.sandbox.time t
 ON sp.ts = t.ts
GROUP BY
 sp.song_id,
 t.month
)
SELECT
 wsc.song_id,
 s.title AS song_title,
 s.year AS song_year,
 a.artist_name AS song_artist,
 AVG(wsc.monthly_play_total_ct) AS monthly_avg
FROM monthly_songplay_counts wsc
INNER JOIN dwh.sandbox.songs s
 ON wsc.song_id = s.song_id
INNER JOIN dwh.sandbox.artists a
 ON s.artist_id = a.artist_id
GROUP BY 
 wsc.song_id,
 s.title,
 s.year,
 a.artist_name