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
4. Run `sql/04_views.sql` to create views

## Sample Output
[paste screenshots here]
