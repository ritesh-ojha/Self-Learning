# SQL Cheat Sheet

This is a SQL cheat sheet that covers basic SQL syntax, data types, and common queries.

## Basics

### Select
- Selects data from a database.
```sql
SELECT column1, column2, ...
FROM table_name;
```

### Select All
- Selects all columns from a table.
```sql
SELECT * FROM table_name;
```

### Distinct
- Selects unique values from a column.
```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

## Filtering

### Where
- Filters data based on conditions.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```
### AND, OR, NOT
- Combines multiple conditions.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2;

SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2;

SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

### IN
- Checks for values within a set.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column IN (value1, value2, ...);
```

### BETWEEN
- Checks for values within a range.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column BETWEEN value1 AND value2;
```

### LIKE
- Searches for patterns in strings.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column LIKE pattern;
```

### IS NULL
- Checks for null values.
```sql
SELECT column1, column2, ...
FROM table_name
WHERE column IS NULL;
```

## Sorting

### Order By
- Sorts the result set.
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 ASC|DESC;
```

## Aggregation

### COUNT, AVG, SUM, MAX, MIN
- Performs aggregate functions.

```sql
SELECT COUNT(column)
FROM table_name;

SELECT AVG(column)
FROM table_name;

SELECT SUM(column)
FROM table_name;

SELECT MAX(column)
FROM table_name;

SELECT MIN(column)
FROM table_name;
```

### GROUP BY
- Groups rows that have the same values.

```sql
SELECT column1, COUNT(*)
FROM table_name
GROUP BY column1;
```

### HAVING
- Filters groups.
```sql
SELECT column1, COUNT(*)
FROM table_name
GROUP BY column1
HAVING COUNT(*) > value;
```

## Joins

### INNER JOIN
- Selects records with matching values in both tables.

```sql
SELECT table1.column1, table2.column2, ...
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
```

### LEFT JOIN
- Selects records from the left table, and the matched records from the right table.
- If there are no matches, the result is NULL on the right side.
```sql
SELECT table1.column1, table2.column2, ...
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
```

### RIGHT JOIN
- Selects records from the right table, and the matched records from the left table.
- If there are no matches, the result is NULL on the left side.
```sql
SELECT table1.column1, table2.column2, ...
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

### FULL OUTER JOIN
- Selects all records when there is a match in either left or right table records.
```sql
SELECT table1.column1, table2.column2, ...
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column;
```

## Subqueries

### Subquery in Select
- Includes a subquery in a SELECT statement.
```sql
SELECT column1, (SELECT column2 FROM table2 WHERE condition) AS alias_name
FROM table1;
```

### Subquery in Where
- Includes a subquery in a WHERE clause.

```sql
SELECT column1
FROM table1
WHERE column2 = (SELECT column2 FROM table2 WHERE condition);
```
