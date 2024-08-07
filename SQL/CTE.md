# CTE / WITH CLAUSE

A Common Table Expression (CTE) is a temporary result set that is defined within a SELECT, INSERT, UPDATE, or DELETE statement. It can be thought of as a temporary view that is derived from a SELECT statement.

The WITH clause is used to define a CTE. The basic syntax is:

```sql
WITH cte_name (column1, column2, ...) AS (
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition
)
SELECT * FROM cte_name;
```

## Here are some key benefits of using CTEs:

- **Simplify complex queries:** CTEs can break down complex queries into smaller, more manageable pieces.
- **Improve readability:** CTEs can make queries easier to read and understand by separating the logic into distinct sections.
- **Reduce repetition:** CTEs can eliminate the need to repeat the same subquery multiple times within a larger query.
- **Enhance performance:** In some cases, CTEs can improve performance by reducing the number of times a subquery is executed.

## Some common use cases for CTEs include:

- **Recursive queries:** CTEs are particularly useful for recursive queries, where a query needs to reference itself.
- **Hierarchical data:** CTEs can be used to query hierarchical data, such as organizational charts or tree-like structures.
- **Data aggregation:** CTEs can be used to perform data aggregation, such as calculating running totals or averages.

## EXAMPLE

orders
|id	|date|	customer_id|	store|	employee_id|	amount|
|---|----|---------------|-----|---------------|-----|
|101	|2021-07-01|	234|	East|	11	|198.00
|102	|2021-07-01|	675|	West|	13	|799.00
|103	|2021-07-01|	456|	West|	14	|698.00
|104	|2021-07-01|	980|	Center|	15	|99.00
|105	|2021-07-02|	594|	Center| 16	|1045.45
|106	|2021-07-02|	435|	East|	11	|599.00
|107	|2021-07-02|	246|	West|	14	|678.89
|108	|2021-07-03|	256|	East|	12	|458.80
|109	|2021-07-03|	785|	East|	12	|99.00
|110	|2021-07-03|	443|	Center|	16	|325.50

### Example 1
In our first example, we want to compare the total amount of each order with the average order amount at the corresponding store.

We can start by calculating the average order amount for each store using a CTE and adding this column to the output of the main query:

```sql
WITH avg_per_store AS
  (SELECT store, AVG(amount) AS average_order
   FROM orders
   GROUP BY store)
SELECT o.id, o.store, o.amount, avg.average_order AS avg_for_store
FROM orders o
JOIN avg_per_store avg
ON o.store = avg.store;
```

**Output**

|id	|store	|amount	|avg_for_store
|---|-------|-------|-------------
|101	|East	|198.00	|338.70
|102	|West	|799.00	|725.30
|103	|West	|698.00	|725.30
|104	|Center	|99.00	|489.98
|105	|Center	|1045.45	|489.98
|106	|East	|599.00	|338.70
|107	|West	|678.89	|725.30
|108	|East	|458.80	|338.70
|109	|East	|99.00	|338.70
|110	|Center	|325.50	|489.98