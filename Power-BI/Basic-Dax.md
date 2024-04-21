# DAX (Data Analysis Expressions)

DAX (Data Analysis Expressions) is a formula language used in Microsoft Power BI, Power Pivot, and Power BI Desktop to create calculated columns, measures, and DAX formulas for data analysis and visualization.

## Mostly Use Dax Formulas

### Calculating Total Sales
```bash
Total Sales = SUM('Sales'[Amount])
```
### Calculating Average Order Quantity
```bash
Avg Order Quantity = AVERAGE('Sales'[Quantity])
```
### Calculating Year-to-Date Sales
```bash
YTD Sales = TOTALYTD(SUM('Sales'[Amount]), 'Date'[Date])
```
###  Ranking Products by Sales Amount
```bash
Product Rank = RANKX('Product', CALCULATE(SUM('Sales'[Amount])))
```
### Calculating Profit Margin
```bash
Profit Margin = DIVIDE(SUM('Sales'[Profit]), SUM('Sales'[Revenue]), 0)
```
### Filtering Data by Date Range
```bash
Sales in 2023 = CALCULATE(SUM('Sales'[Amount]), 'Date'[Year] = 2023)
```
### Calculating Sales Growth Rate
```bash
Sales Growth Rate = 
DIVIDE(
    SUM('Sales'[Amount]) - CALCULATE(SUM('Sales'[Amount]), SAMEPERIODLASTYEAR('Date'[Date])),
    CALCULATE(SUM('Sales'[Amount]), SAMEPERIODLASTYEAR('Date'[Date])),
    0
)
```
`This measure calculates the sales growth rate by comparing the total sales amount for the current period with the total sales amount for the same period last year.`
###  Calculating Top N Products by Sales
```bash
Top 5 Products by Sales = 
TOPN(
    5,
    FILTER(
        VALUES('Product'[Name]),
        CALCULATE(SUM('Sales'[Amount])) > 0
    ),
    CALCULATE(SUM('Sales'[Amount]))
)
```

# Author
@[Ritesh Ojha](https://www.github.com/ritesh-ojha)