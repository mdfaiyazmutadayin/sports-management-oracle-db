1. Show the name and sal for each coach from "coach" table.

select c_name "Coach Name", salary "Salary"
from coach


2. Show the names, id and maximum salaries of employees from the "hire" table where the maximum salary is greater than 3500 and sort the results in descending order based on the maximum salary.

select c_id "Coach ID", c_name "Coach Name", max(salary) "Maximum Salary"
from hire
group by c_id, c_name
having max(salary)>3500
order by max(salary) desc


3. Show the details (name, age, position, and statistics) of players from the "player" table whose age is greater than the highest average maximum age among players for each position and sort the results in descending order based on age.

select p_name "Player Name", age "AGE", p_position "POSITION", statistics "STATISTICS"
from player
where age > ALL
    (select AVG(MAX(age))
     from player
     group by p_position)
order by age desc


4. Show the name, start date, end date and season of the league from the "league" table with the latest start date.

select l_name "League Name", s_date "Start Date", e_date "End Date"
from league
where s_date =
    (select MAX(s_date)
     from league)


5. Show the match ID, match date, match time, venue, and the date of the next match (if available) for each match from the "match_info" table, sorted by the match ID. (Self-Joins and Outer-Joins)

select m1.m_id "ID", m1.m_date "Date", m1.m_time "Time", m1.venu, m2.m_date "Next Match Date"
from match_info m1, match_info m2
where m1.m_id = m2.m_id(+) - 1
order by m1.m_id


6. 6. Show the names of the teams and the names of the leagues they are assembled in, based on the "assemble," "league," and "team" tables. (Non-Equijoins and Multiple-Joins)

select t.t_name || ' IS ASSEMBLED WITH ' || l.l_name as ASSEMBLE
from league l, team t
where l.l_id =
    (select a.l_id
    from assemble a
    where a.t_id = t.t_id)
