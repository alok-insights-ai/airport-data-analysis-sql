# airport-data-analysis-sql
SQL Project analyzing airport routes, flights, passengers, and seat utilization. Includes 20+ complex queries such as YOY growth, busiest routes, utilization analysis, and correlation with city population.
# Airport Data Analysis (SQL Project)

##  Overview
This project demonstrates advanced SQL skills by analyzing **airport routes, flights, passengers, and utilization metrics**.  
The dataset was designed to mimic real-world airline statistics. Queries cover **aggregations, time-series analysis, window functions, and correlations**.

---

##  Dataset & Schema
- **Airport_Detailsss** → Airport codes, cities, population  
- **Route_detailss** → Route IDs, origin, destination, distance  
- **Monthly_FlightStats** → Flights, passengers, seats by month  
Download the dataset: [HERE](https://github.com/alok-insights-ai/airport-data-analysis-sql/blob/main/Airport101.txt)  
---

##  Key Analyses Performed
1. Total passengers per origin–destination pair  
2. Average seat utilization per flight  
3. Top 5 busiest routes by passenger volume  
4. Year-over-Year (YOY) passenger growth per route  
5. Peak traffic months for each city  
6. Routes with largest decline in passengers  
7. Correlation between city population & passengers  

---

##  Tech Stack
- SQL (MySQL  syntax compatible)  
- Window Functions (e.g., LAG, RANK)  
- Joins, Group By, CTEs, Subqueries  

---
##  SQL Queries
The project includes **20+ advanced SQL queries** covering:
-  Passenger analysis  
-  Seat utilization  
-  Year-over-Year growth trends  
-  Busiest routes  
-  Correlation with city population  

 Full queries in [`Airport_data_Analysis.sql`](https://github.com/alok-insights-ai/airport-data-analysis-sql/blob/main/Airport%20data%20Analysis%20222.sql)  

## 📊 Sample Query
```sql
-- Year-over-Year Passenger Growth
SELECT route_id, YEAR(fly_date) AS year,
       SUM(passengers) AS total_passengers,
       LAG(SUM(passengers)) OVER (PARTITION BY route_id ORDER BY YEAR(fly_date)) AS prev_year_passengers,
       ROUND(((SUM(passengers) - LAG(SUM(passengers)) OVER (PARTITION BY route_id ORDER BY YEAR(fly_date)))
       / LAG(SUM(passengers)) OVER (PARTITION BY route_id ORDER BY YEAR(fly_date))) * 100, 2) AS yoy_growth_percent
FROM Monthly_FlightStats
GROUP BY route_id, YEAR(fly_date);

