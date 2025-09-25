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
## 📂 Dataset
The project uses a simulated dataset of airports, routes, and monthly flight stats.  
- `Airport_Detailsss` → Airport codes, cities, populations  
- `Route_detailss` → Routes with distance  
- `Monthly_FlightStats` → Flights, passengers, seats by month  

👉 Download the dataset:(https://github.com/alok-insights-ai/airport-data-analysis-sql/blob/main/Airport101.txt)  

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

