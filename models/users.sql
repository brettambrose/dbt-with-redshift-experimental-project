  SELECT
   DISTINCT(userid),
   firstname,
   lastname,
   gender,
   level
  FROM {{ref('events_raw')}}