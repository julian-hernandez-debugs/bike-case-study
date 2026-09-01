SELECT 
  member_casual,
  rideable_type,
  day_of_week,
  month,
  -- Extract hour of the day to see rush-hour patterns
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(ride_id) AS total_rides,
  ROUND(AVG(ride_length), 2) AS avg_ride_length_minutes
FROM 
  `project-8130d854-dab2-48ea-925.cyclistic_data.cleaned_tripdata`
GROUP BY 
  member_casual,
  rideable_type,
  day_of_week,
  month,
  hour_of_day;