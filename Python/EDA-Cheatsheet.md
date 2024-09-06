# EDA Cheat Sheet with Examples

## 1. Importing Libraries
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

## 2. Loading Data
```py
# Load CSV file into DataFrame
df = pd.read_csv("data.csv")

# Display the first 5 rows
df.head()

# Display the last 5 rows
df.tail()

# Check the shape of the DataFrame
df.shape  # (rows, columns)

# Check data types of each column
df.dtypes

# Quick summary of the data
df.info()
```
## 3. Statistical Summary of the Data
```py
# Summary statistics for numerical columns
df.describe()

# Summary statistics for categorical columns
df.describe(include='object')
```

## 4. Handling Missing Values
```py
# Check for missing values
df.isnull().sum()

# Drop missing values
df.dropna(inplace=True)

# Fill missing values with the mean for numerical columns
df['age'].fillna(df['age'].mean(), inplace=True)

# Fill missing values with the mode for categorical columns
df['gender'].fillna(df['gender'].mode()[0], inplace=True)
```

## 5. Handling Duplicates
```py
# Check for duplicate rows
df.duplicated().sum()

# Remove duplicate rows
df.drop_duplicates(inplace=True)
```

## 6. Data Types and Conversion
```py
# Convert column to datetime
df['date'] = pd.to_datetime(df['date'])

# Convert column to categorical
df['category'] = df['category'].astype('category')

# Convert column to numeric
df['age'] = pd.to_numeric(df['age'])
```

## 7. Univariate Analysis

### Frequency Distribution for Categorical Data
```py
# Count the number of occurrences of each category
df['gender'].value_counts()

# Plot the frequency of categories
sns.countplot(x='gender', data=df)
plt.show()
```

### Distribution of Numerical Data
```py
# Plot distribution for a numerical column
sns.histplot(df['age'], bins=20, kde=True)
plt.show()

# Boxplot to check for outliers
sns.boxplot(x=df['age'])
plt.show()
```

## 8. Bivariate Analysis
### Correlation Heatmap (Numerical Variables)
```py
# Compute correlation matrix
corr_matrix = df.corr()

# Plot heatmap
plt.figure(figsize=(10, 6))
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
plt.show()
```

### Scatter Plot (Numerical vs Numerical)
```py
# Scatter plot between two numerical variables
sns.scatterplot(x='height', y='weight', data=df)
plt.show()
```

### Bar Plot (Categorical vs Numerical)
```py
# Bar plot showing average 'age' per 'gender'
sns.barplot(x='gender', y='age', data=df)
plt.show()
```

## 9. Multivariate Analysis
### Pairplot (Visualize Relationships Between All Numerical Variables)
```py
sns.pairplot(df)
plt.show()
```

### Grouping and Aggregation
```py
# Group by a categorical column and calculate mean
df.groupby('gender')['age'].mean()

# Group by multiple columns and calculate aggregation
df.groupby(['gender', 'city']).agg({'age': ['mean', 'min', 'max']})
```

## 10. Outlier Detection
### Box Plot
```py
sns.boxplot(x=df['salary'])
plt.show()
```

### Z-Score Method
```py
from scipy import stats

# Compute z-scores
z_scores = np.abs(stats.zscore(df['age']))

# Identify outliers (z-score > 3)
df_outliers = df[z_scores > 3]
```













