create database Data_analysis;
use Data_analysis;
create table Airport_Detailsss(
airport_code varchar(50),
city varchar(50), 
population int
);
create table Route_detailss(
route_id int primary key,
origin_airport varchar(20),
destination_airport varchar(50),
distance int );
 create table Monthly_FlightStats(
 stat_id int primary key,
 route_id int,
 fly_date date,
 flights int,
 passengers int,
 seats int);
 insert into Airport_Detailsss(airport_code, city, population)
 values ('LAX', 'Los Angeles, CA', 3976322),
('SFO', 'San Francisco, CA', 873965),
('RDM', 'Bend, OR', 105118),
('PDX', 'Portland, OR', 654741),
('JFK', 'New York, NY', 8336817);
insert into Route_detailss(route_id, origin_airport, destination_airport, distance) 
VALUES
(1, 'LAX', 'SFO', 337),
(2, 'SFO', 'LAX', 337),
(3, 'PDX', 'RDM', 116),
(4, 'SFO', 'RDM', 462),
(5, 'LAX', 'JFK', 2475),
(6, 'JFK', 'LAX', 2475);
insert into Monthly_FlightStats(
stat_id, route_id, fly_date, flights, passengers, seats) 
VALUES
(1, 1, '2000-01-01', 100, 15000, 20000),
(2, 1, '2000-02-01', 100, 15000, 20000),
(3, 1, '2000-03-01', 100, 15000, 20000),
(4, 1, '2000-06-01', 120, 18000, 24000),
(5, 1, '2000-07-01', 130, 19500, 26000),
(6, 1, '2000-08-01', 130, 19500, 26000),
(7, 1, '2001-01-01', 110, 16500, 22000),
(8, 1, '2001-02-01', 110, 16500, 22000),
(9, 1, '2001-03-01', 110, 16500, 22000),
(10, 1, '2001-06-01', 132, 19800, 26400),
(11, 1, '2001-07-01', 143, 21450, 28600),
(12, 1, '2001-08-01', 143, 21450, 28600),
(13, 1, '2002-01-01', 120, 18000, 24000),
(14, 1, '2002-02-01', 120, 18000, 24000),
(15, 1, '2002-03-01', 120, 18000, 24000),
(16, 1, '2002-06-01', 145, 21750, 29000),
(17, 1, '2002-07-01', 157, 23550, 31400),
(18, 1, '2002-08-01', 157, 23550, 31400),
(19, 2, '2000-01-01', 100, 15000, 20000),
(20, 2, '2000-02-01', 100, 15000, 20000),
(21, 2, '2000-03-01', 100, 15000, 20000),
(22, 2, '2000-06-01', 120, 18000, 24000),
(23, 2, '2000-07-01', 130, 19500, 26000),
(24, 2, '2000-08-01', 130, 19500, 26000),
(25, 2, '2001-01-01', 110, 16500, 22000),
(26, 2, '2001-02-01', 110, 16500, 22000),
(27, 2, '2001-03-01', 110, 16500, 22000),
(28, 2, '2001-06-01', 132, 19800, 26400),
(29, 2, '2001-07-01', 143, 21450, 28600),
(30, 2, '2001-08-01', 143, 21450, 28600),
(31, 2, '2002-01-01', 120, 18000, 24000),
(32, 2, '2002-02-01', 120, 18000, 24000),
(33, 2, '2002-03-01', 120, 18000, 24000),
(34, 2, '2002-06-01', 145, 21750, 29000),
(35, 2, '2002-07-01', 157, 23550, 31400),
(36, 2, '2002-08-01', 157, 23550, 31400),
(37, 3, '2000-01-01', 60, 6000, 9000),
(38, 3, '2000-02-01', 60, 6000, 9000),
(39, 3, '2000-03-01', 60, 6000, 9000),
(40, 3, '2001-01-01', 65, 6500, 9750),
(41, 3, '2001-02-01', 65, 6500, 9750),
(42, 3, '2001-03-01', 65, 6500, 9750),
(43, 3, '2002-01-01', 70, 7000, 10500),
(44, 3, '2002-02-01', 70, 7000, 10500),
(45, 3, '2002-03-01', 70, 7000, 10500),
(46, 4, '2000-01-01', 30, 3000, 4500),
(47, 4, '2000-02-01', 30, 3000, 4500),
(48, 4, '2000-03-01', 30, 3000, 4500),
(49, 4, '2001-01-01', 32, 3200, 4800),
(50, 4, '2001-02-01', 32, 3200, 4800),
(51, 4, '2001-03-01', 32, 3200, 4800),
(52, 4, '2002-01-01', 35, 3500, 5250),
(53, 4, '2002-02-01', 35, 3500, 5250),
(54, 4, '2002-03-01', 35, 3500, 5250),
(55, 5, '2000-01-01', 50, 5000, 12500),
(56, 5, '2000-02-01', 50, 5000, 12500),
(57, 5, '2000-03-01', 50, 5000, 12500),
(58, 5, '2001-01-01', 40, 4000, 10000),
(59, 5, '2001-02-01', 40, 4000, 10000),
(60, 5, '2001-03-01', 40, 4000, 10000),
(61, 5, '2002-01-01', 30, 3000, 7500),
(62, 5, '2002-02-01', 30, 3000, 7500),
(63, 5, '2002-03-01', 30, 3000, 7500),
(64, 6, '2000-01-01', 50, 5000, 12500),
(65, 6, '2000-02-01', 50, 5000, 12500),
(66, 6, '2000-03-01', 50, 5000, 12500),
(67, 6, '2001-01-01', 40, 4000, 10000),
(68, 6, '2001-02-01', 40, 4000, 10000),
(69, 6, '2001-03-01', 40, 4000, 10000),
(70, 6, '2002-01-01', 30, 3000, 7500),
(71, 6, '2002-02-01', 30, 3000, 7500),
(72, 6, '2002-03-01', 30, 3000, 7500);

select *from Airport_Detailsss;
select *from Route_detailss;
select *from Monthly_FlightStats;

#1) Total passengers per origin-Destination pair.
SELECT r.origin_airport, r.destination_airport, SUM(m.passengers) AS total_passengers
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport;

#2) Average seat utilization per flight.
SELECT r.origin_airport, r.destination_airport,
AVG(CAST(m.passengers AS FLOAT) / m.seats) * 100 AS avg_utilization_percent
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport;

#3) Top 5 origin destination airport pairs by passengers volume.
SELECT  r.origin_airport, r.destination_airport, SUM(m.passengers) AS total_passengers
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY total_passengers DESC limit 5;

# 4) Total Flight  and passenger per origin city.
SELECT a.city, SUM(m.flights) AS total_flights, SUM(m.passengers) AS total_passengers
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
JOIN Airport_Detailsss a ON r.origin_airport = a.airport_code
GROUP BY a.city;

#5) Total Distance Flown per origin Airport.
SELECT r.origin_airport, SUM(m.flights * r.distance) AS total_distance_flown
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport;

#6) monthly flight Analysis.
SELECT YEAR(m.fly_date) AS year, MONTH(m.fly_date) AS month,
SUM(m.flights) AS total_flights, SUM(m.passengers) AS total_passengers
FROM Monthly_FlightStats m
GROUP BY YEAR(m.fly_date), MONTH(m.fly_date)
ORDER BY year, month;

#7) Underutilized Routes Analysis.
SELECT r.origin_airport, r.destination_airport,
AVG(CAST(m.passengers AS FLOAT) / m.seats) * 100 AS avg_utilization
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
HAVING AVG(CAST(m.passengers AS FLOAT) / m.seats) < 0.5;

#8) Top 3 Origin Airport by flight frequency.
SELECT r.origin_airport, SUM(m.flights) AS total_flights
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
GROUP BY r.origin_airport
ORDER BY total_flights DESC limit 3;

#9)City  sending the most flight and Passengers to Bend ,OR[Excluding Bend ,OR]
SELECT a.city, SUM(m.flights) AS total_flights, SUM(m.passengers) AS total_passengers
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
JOIN Airport_Detailsss a ON r.origin_airport = a.airport_code
WHERE r.destination_airport = 'RDM' AND r.origin_airport <> 'RDM'
GROUP BY a.city
ORDER BY total_flights DESC;

#10) Longest Flight route 
SELECT  origin_airport, destination_airport, distance
FROM Route_detailss 
ORDER BY distance DESC limit 1;

# 11 Most and Least Busy Months by Flight Count
select date_format(fly_date, '%Y-%m') as month,
sum(flights) AS total_flights
from Monthly_FlightStats
group by date_format(fly_date, '%Y-%m')
order by total_flights ;

# 12 Year-over-Year Percentage Growth in Passenger Numbers for Each Origin-Destination Pair\
select route_id,year(fly_date)as year,
sum(passengers) AS total_passengers,
lag(sum(passengers))over(partition by route_id order by year(fly_date)) as prev_year_passengers,
round(( (sum(passengers) - lag(sum(passengers)) OVER (partition by route_id order by year(fly_date)))/lag(sum(passengers)) over (partition by route_id order by year(fly_date)) * 100 ),
2) as yoy_growth_percent
from Monthly_FlightStats
group by route_id, year(fly_date)
order by route_id, year;

# 13 Routes with Consistent Year-over-Year Growth in Flight Numbers
with yearly_flights as(select route_id,year(fly_date) as year,
sum(flights) as total_flights from Monthly_FlightStats group by route_id, year(fly_date)),
growth_check as(select route_id,year,total_flights,
lag(total_flights) over (partition by route_id order by year) as prev_year_flights from yearly_flights)
select route_id from growth_check
group by route_id
having min(case when prev_year_flights is null then 1 -- first year ignore
when total_flights > prev_year_flights then 1 -- growth
else 0 -- decline or same
end) = 1;

# 14  Top 3 Origin Airports with Highest Weighted Passenger-to-Seats Utilization Ratio
select origin_airport,sum(passengers) as total_passengers,
sum(seats) as total_seats,
round(sum(passengers) * 1.0 / sum(seats), 3) as utilization_ratio
from Monthly_FlightStats
join Route_detailss r on Monthly_FlightStats.route_id = r.route_id
group by origin_airport
order by utilization_ratio desc
limit 3;


#15 Peak Traffic Month for Each Origin City
with monthly_city AS (select r.origin_airport,
date_format(m.fly_date, '%Y-%m') AS month,
sum(m.passengers) as total_passengers from Monthly_FlightStats m
join Route_detailss r on m.route_id = r.route_id
group by r.origin_airport,date_format(m.fly_date, '%Y-%m')),
ranked as (select origin_airport,month,total_passengers,
rank() over (partition by origin_airport order by total_passengers desc) as rn
from monthly_city)
select origin_airport, month AS peak_month, total_passengers from ranked
where rn = 1
order by origin_airport;


#16 Routes with Largest Decline in Passenger Numbers Year-over-Year
with yearly_passengers as (select route_id,year(fly_date) as year,
sum(passengers) as total_passengers
from Monthly_FlightStats
group by route_id, year(fly_date)),
growth_calc as (select route_id,year,total_passengers,
lag(total_passengers) over (partition by route_id order by year) AS prev_year_passengers,
(total_passengers - lag(total_passengers) over (partition by route_id order by year)) as change_in_passengers
from yearly_passengers)
select route_id,year,prev_year_passengers,total_passengers,change_in_passengers
from growth_calc
where change_in_passengers is not null
order by change_in_passengers asc
limit 5;  

# 17 Underperforming Routes with Low Seat Utilization
select route_id,
sum(passengers) as total_passengers,
sum(seats) as total_seats,
round(sum(passengers) * 1.0 / sum(seats), 3) as utilization_ratio
from Monthly_FlightStats
group by route_id
having sum(seats) > 0 
order by utilization_ratio asc
limit 5; 
 
#18 Routes with Longest Average Flight Distance
select r.route_id,r.origin_airport,r.destination_airport,
avg(r.distance) as avg_distance
from Route_detailss r
group by r.route_id, r.origin_airport, r.destination_airport
order by avg_distance desc
limit 5;  

#19  Annual Trends in Air Travel
select year(fly_date) as year,sum(flights) AS total_flights,
sum(passengers) as total_passengers,sum(seats) as total_seats,
round(sum(passengers) * 1.0 / sum(seats), 3) as avg_utilization_ratio from Monthly_FlightStats
group by year(fly_date)
order by year;

#20 Top 3 Busiest Routes Based on Total Distance Flown
select r.route_id,r.origin_airport,r.destination_airport,r.distance,
sum(m.flights) as total_flights,
(sum(m.flights) * r.distance) as total_distance_flown
from Monthly_FlightStats m
join Route_detailss r ON m.route_id = r.route_id
group by r.route_id, r.origin_airport, r.destination_airport, r.distance
order by total_distance_flown desc
limit 3;

#21) Corelation between origin City population and total passengers.
SELECT a.city, a.population, SUM(m.passengers) AS total_passengers
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
JOIN Airport_Detailsss a ON r.origin_airport = a.airport_code
GROUP BY a.city, a.population;

#22) Origin cities with Highest Flight Frequency per capita.
SELECT a.city, a.population,
SUM(m.flights) * 1.0 / a.population AS flights_per_capita
FROM Route_detailss r
JOIN Monthly_FlightStats m ON r.route_id = m.route_id
JOIN Airport_Detailsss a ON r.origin_airport = a.airport_code
GROUP BY a.city, a.population
ORDER BY flights_per_capita DESC;

#23)Average seat utilization for high vs low populatikon cities.
WITH city_data AS (
SELECT a.city,a.population,SUM(m.passengers) AS total_passengers, SUM(m.seats)      
AS total_seats FROM Route_detailss r JOIN Monthly_FlightStats m ON r.route_id = m.route_id JOIN Airport_Detailsss a            
ON r.origin_airport = a.airport_code
GROUP BY a.city, a.population),avg_pop AS (
SELECT AVG(population) AS avg_pop FROM Airport_Detailsss)
SELECT CASE WHEN cd.population >= ap.avg_pop THEN 'High Population City' ELSE 'Low Population City'
END AS city_category,(SUM(cd.total_passengers) * 1.0 / NULLIF(SUM(cd.total_seats), 0)) * 100 AS avg_utilization_percent
FROM city_data cd
CROSS JOIN avg_pop ap
GROUP BY CASE
WHEN cd.population >= ap.avg_pop THEN 'High Population City'
ELSE 'Low Population City'
END;








