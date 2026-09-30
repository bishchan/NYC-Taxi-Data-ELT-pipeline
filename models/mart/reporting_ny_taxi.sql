SELECT taxi_type, year, month, pickup_borough, dropoff_borough,
 vendor_id, vendor_name, count(*) as num_of_trips, sum(total_amount) as total_amount
  FROM {{ref('nyc_taxi_data','mart_ny_taxi')}}
  GROUP BY taxi_type, year, month, pickup_borough, dropoff_borough,
 vendor_id, vendor_name