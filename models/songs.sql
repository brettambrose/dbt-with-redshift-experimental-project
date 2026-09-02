  SELECT
   song_id,
   title,
   artist_id,
   year,
   duration,
   {{ seconds_to_minutes('duration') }} AS duration_minutes
  FROM {{ref('songs_raw')}}
  WHERE song_id IS NOT NULL