# sports-management-oracle-db

A relational database project for managing football leagues, teams, 
players, coaches, matches, and schedules using Oracle SQL.

## Tech Stack
- Oracle SQL
- DDL, DML, Joins, Subqueries, Views, Constraints

## Schema Overview
15 tables: `ceo`, `league`, `organize`, `team`, `player`, 
`associate`, `coach`, `supervise`, `match_info`, `schedule`, 
`participate`, `match_official`, `maintain`, `hire`, `assemble`

## SQL Concepts Demonstrated
- Primary & Foreign key constraints across 15 tables
- Complex subqueries using ALL, MAX, AVG operators
- Self-joins and Oracle outer joins
- Non-equijoins and multi-table joins (7 tables)
- GROUP BY, HAVING, ORDER BY
- Simple and complex VIEWs

## How to Run
1. Run `sql/01_create_tables.sql` to create schema
2. Run `sql/02_insert_data.sql` to populate data
3. Run `sql/03_queries.sql` for query outputs


## Sample Output
[<img width="661" height="850" alt="imgonline-com-ua-twotoone-Ktf1jwUwTwpvff" src="https://github.com/user-attachments/assets/1a74b083-5135-4ddb-b070-42953c7c284f" />
<img width="622" height="715" alt="Screenshot 2026-06-09 131122" src="https://github.com/user-attachments/assets/bc54093c-e429-4677-8ec1-b329259d8e15" />
<img width="611" height="723" alt="Screenshot 2026-06-09 131049" src="https://github.com/user-attachments/assets/58b94176-eb01-46a6-9fc7-0f658b024a92" />
<img width="601" height="657" alt="Screenshot 2026-06-09 131005" src="https://github.com/user-attachments/assets/02c92fa6-cecf-4620-abae-d0c2906ad2ae" />
<img width="609" height="561" alt="Screenshot 2026-06-09 130928" src="https://github.com/user-attachments/assets/f4798e1e-fcdf-4141-951c-a2a0cfd6524a" />
<img width="612" height="571" alt="Screenshot 2026-06-09 130845" src="https://github.com/user-attachments/assets/1f72ba4c-e4b1-473e-8ca7-02a7b292657c" />
<img width="917" height="483" alt="Screenshot 2023-08-01 213555" src="https://github.com/user-attachments/assets/533a4104-b1f0-4672-a28c-306c03e4ee02" />
paste screenshots here]
