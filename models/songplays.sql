  SELECT
   e.ts,
   e.userid,
   e.level,
   s.song_id,
   s.artist_id,
   e.sessionid,
   e.location,
   e.useragent,
   e.length AS session_duration,
   {{ seconds_to_minutes('e.length') }} AS session_duration_minutes
  FROM {{ref('songs_raw')}} s
  INNER JOIN {{ref('events_raw')}} e
   ON (s.title = e.song AND s.artist_name = e.artist)
  WHERE e.page = 'NextSong'