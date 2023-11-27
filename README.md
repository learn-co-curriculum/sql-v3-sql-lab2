# SQL Lab 2

## Learning Goals

- Use the JOIN operator to combine rows from multiple tables.

## Introduction

This lab will provide practice with writing SQL SELECT statements that use the JOIN operator to
combine rows from multiple tables based on foreign key constraints.

The database holds information for hockey teams, players, and divisions.

- A division has several teams.  Each team is in one division.
- A team has several players.  Each player plays for one team.

![lab2 erd](https://curriculum-content.s3.amazonaws.com/6036/java-mod-5-sql-lab2/lab2_erd.png
)

## Instructions

1. Create a new database named `lab2`.
2. Select the `lab2` database and open the query tool.          
3. Open the `lab_setup.sql` file in the query tool, then execute the SQL statements to create
   the tables and insert rows.
4. Close the current connection by closing the tab on the query tool toolbar, and then open a new query
   tool connection (to avoid overwriting lab_setup.sql).    
5. Execute the following queries and confirm the tables are populated:   

<table>
<tr>
<th>
Query
</th>
<th>
Result
</th>
</tr>

<tr>
<td>

<pre>
<code>
SELECT *
FROM division;
</code>
</pre>

</td>

<td>

<pre>
id  name

1   Atlantic
2   Central
3   Northeast
4   Northwest
5   Southeast
6   Pacific
</pre>

</td>
</tr>

<tr>
<td>

<pre>
<code>
SELECT *
FROM team;
</code>
</pre>

</td>

<td>

<pre>
id  name                    wins    losses  ties

1   Boston Blue Jays        43	    16	    3
2   Columbus Cardinals      34      27	    2
3   Detroit Dodos           44	    15	    2
4   San Jose Swifts         43	    12	    6
5   Houston Hummingbirds    38	    18	    2
</pre>

</td>
</tr>

<tr>
<td>

<pre>
<code>
SELECT *
FROM player;
</code>
</pre>

</td>

<td>

<pre>
id  name            team_id

5   D.B. Birch      1
11  P.J. Willow     1
12  A.K. Elm        3
13  F.P. Pine       4
14  Z.Z. Oak        3
15  K.W. Maple      4
37  P.Q. Chestnut   1
61  A.B. Cherry     1
</pre>

</td>
</tr>

</table>




## Tasks

1. Write a SELECT statement to produce the expected result for each task below.
   Use the Query Tool to test your code.
2. Save the SELECT statement for each task to a new file named task1.sql, task2.sql, etc.
   Be sure to save using the "Save As" option to avoid overwriting the previous query file.

![save as](https://curriculum-content.s3.amazonaws.com/6036/sql_lab_1/saveas.png)

### Task #1

- Use an INNER JOIN to combine the rows from the team and division tables.
- Show all columns in the result.
- Sort the result in ascending order of losses.

Expected Result:

<pre>
id  name                    wins    losses  division_id id  name

4   San Jose Swifts         43      12      6           6   Pacific
3   Detroit Dodos           44      15      2           2   Central
1   Boston Blue Jays        43      16      3           3   Northeast
5   Houston Hummingbirds    38      18      2           2   Central
2   Columbus Cardinals      34      27      2           2   Central
</pre>


### Task #2

- Display the division name, team name, and number of wins for
  teams that have at least 40 wins.
- Order the result in descending order of wins.

Expected Result:

<pre>
name        name                wins

Central     Detroit Dodos       44
Northeast   Boston Blue Jays    43
Pacific     San Jose Swifts     43
</pre>

NOTE: pgAdmin does not preface the column headings with the table name,
but the columns in the result are actually division.name, team.name, and team.wins.
You can omit the table name when there are no column name conflicts, such as the wins
column.

### Task #3

- Display the division id, division name, and number of teams per division.
- Sort the result in ascending order of division name.
- HINT: Refine the query from Task #1 and group by the division id.

Expected Result:

<pre>
id  name        count

2   Central     3
3   Northeast   1
6   Pacific     1
</pre>


### Task #4

- Join the player and team tables and display each player's name, along with their team name.
- Sort the result by player name.

Expected Result:

<pre>
name            name

A.B. Cherry     Boston Blue Jays
A.K. Elm        Detroit Dodos
D.B. Birch      Boston Blue Jays
F.P. Pine       San Jose Swifts
K.W. Maple      San Jose Swifts
P.J. Willow     Boston Blue Jays
P.Q. Chestnut   Boston Blue Jays
Z.Z. Oak        Detroit Dodos
</pre>

### Task #5

- Display each player name, team name, and division name (so join all 3 tables),
  for players in the Northeast or Pacific divisions.
- Use the AS keyword to display the columns with aliased names "player", "team", and "division"
  (versus name, name, and name).  Don't use double or single quotes to assign the column aliases.
- Sort the result in ascending order of player name.

Expected Result: 
<pre>
player          team                division

A.B. Cherry     Boston Blue Jays    Northeast    
D.B. Birch      Boston Blue Jays    Northeast
F.P. Pine       San Jose Swifts     Pacific
K.W. Maple      San Jose Swifts     Pacific
P.J. Willow     Boston Blue Jays    Northeast
P.Q. Chestnut   Boston Blue Jays    Northeast
</pre>


## Resources

- [PostgreSQL JOIN](https://www.postgresql.org/docs/current/tutorial-join.html)  
- [PostgreSQL SELECT](https://www.postgresql.org/docs/current/sql-select.html)
- [PostgreSQL ORDER BY](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-order-by/)
- [PostgreSQL GROUP BY](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-group-by/)  
- [PostgreSQL AS alias](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-alias/)

