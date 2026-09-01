  SELECT
   DISTINCT(artist_id),
   artist_name,
   artist_location,
   artist_latitude,
   artist_longitude
  FROM {{ref('songs_raw')}}