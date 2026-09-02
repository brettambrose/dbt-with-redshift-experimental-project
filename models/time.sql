  SELECT
   ts,
   EXTRACT(hour from ts) AS hour,
   EXTRACT(day from ts) AS day,
   EXTRACT(week from ts) AS week,
   EXTRACT(month from ts) AS month,
   EXTRACT(year from ts) AS year,
   EXTRACT(dayofweek from ts) AS weekday
  FROM {{ref('events_raw')}}
  WHERE ts IS NOT NULL