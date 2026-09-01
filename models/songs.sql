  SELECT
   song_id,
   title,
   artist_id,
   year,
   duration
  FROM {{ref('songs_raw')}}