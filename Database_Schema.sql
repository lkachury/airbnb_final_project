nyc_listings --> table main

-- Create table with all listings in csv
CREATE TABLE nyc_listings (
id bigint,
name text, 
host_id bigint,
host_name text, 
borough text, 
neighborhood text, 
latitude double precision,
longitude double precision,
room_type text,
price bigint,
minimum_nights bigint, 
number_of_reviews bigint,
availability_365 bigint, 
days_since_last_review bigint
);

-- Confirm table created
select * from nyc_listings limit 15
 
-- Create table with host information and listing price and borough and neighborhood
 CREATE TABLE nyc_listings2( 
id bigint,
host_id bigint,
host_name text,
borough text,
neighborhood text,
price bigint,
);

-- Confirm table created
select * from nyc_listings2 limit 15

-- Create table with listings by room type, number of reviews and days since last review
 CREATE TABLE nyc_listings3( 
id bigint
room_type text,
number_of_reviews bigint,
day_since_last_review bigint, 
);

-- Confirm table created
select * from nyc_listings3 limit 15

-- Merging tables 
SELECT
 *
  FROM nyc_listings2
   JOIN nyc_listings3
    USING (id);