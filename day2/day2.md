Here's how we can structure the SQL code into a well-organized `day2.sql` file, including comments on each operation. Then, I’ll outline a `day2.md` file with explanations of the main concepts covered.

### `day2.sql` File

```sql
-- Day 2: PostgreSQL Learning - SQL Code

-- Creating the users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserting sample data into users table
INSERT INTO users (name, email, age) VALUES
('Alice', 'alice@example.com', 30),
('Bob', 'bob@example.com', 25),
('Charlie', 'charlie@example.com', 35);

-- Selecting all data from users table
SELECT * FROM users;

-- Selecting users older than 30
SELECT * FROM users WHERE age > 30;

-- Selecting users with name containing 'Bob'
SELECT * FROM users WHERE name LIKE '%Bob%';

-- Updating age for user 'Bob'
UPDATE users SET age = 26 WHERE name = 'Bob';

-- Deleting user 'Charlie'
DELETE FROM users WHERE name = 'Charlie';

-- Creating a dummy table for testing
CREATE TABLE dummyTable (name VARCHAR(100));

-- Dropping dummy table
DROP TABLE dummyTable;

-- Adding a new column 'address' to the users table
ALTER TABLE users ADD COLUMN address VARCHAR(100);

-- Ordering users by age in ascending order
SELECT * FROM users ORDER BY age ASC;

-- Selecting unique ages from users table
SELECT DISTINCT age FROM users;

-- Limiting the result to 1 row
SELECT * FROM users LIMIT 1;

-- Limiting to 10 rows, starting from the 2nd row
SELECT * FROM users LIMIT 10 OFFSET 1;

-- Counting users by age
SELECT age, COUNT(*) FROM users GROUP BY age;

-- Counting users by age, filtered by specific range
SELECT age, COUNT(*) FROM users GROUP BY age HAVING age > 20 AND age < 30;

-- Using NOT IN with age filtering
SELECT * FROM users WHERE age NOT IN (26, 27, 28) ORDER BY age ASC;

-- Using LIKE with partial name search
SELECT * FROM users WHERE name LIKE '%avid%';

-- Combining multiple conditions for filtering
SELECT * FROM users WHERE age < 30 AND age > 25 AND name LIKE '%vid%';

-- Filtering with OR condition
SELECT * FROM users WHERE age < 18 OR age > 60;

-- Using NOT with specific name
SELECT * FROM users WHERE NOT name = 'Alice';

-- Filtering using IN for multiple values
SELECT * FROM users WHERE name IN ('Alice', 'Bob');

-- Filtering with BETWEEN for age range
SELECT * FROM users WHERE age BETWEEN 40 AND 50;

-- Aggregation Functions Examples

-- Counting all users
SELECT COUNT(*) AS all_users_count FROM users;

-- Summing all user ages
SELECT SUM(age) FROM users;

-- Getting minimum age
SELECT MIN(age) FROM users;

-- Getting maximum age
SELECT MAX(age) FROM users;

-- Calculating average age
SELECT AVG(age) FROM users;

-- String Manipulation Functions

-- Converting names to uppercase
SELECT UPPER(name) FROM users;

-- Converting names to lowercase
SELECT LOWER(name) FROM users;

-- Selecting unique names in uppercase
SELECT DISTINCT UPPER(name) FROM users;

-- Date Functions

-- Getting the current date in specific format
SELECT strftime('%Y-%m-%d', 'now') AS currentDate;

-- Type Casting and Mathematical Functions

-- Casting a decimal to an integer (rounds down)
SELECT CAST(25.4 AS INTEGER) AS roundDownValue;

-- Getting the floor value of a decimal
SELECT FLOOR(25.6) AS FloorValue;

-- Getting the ceiling value of a decimal
SELECT CEIL(25.3) AS CeiledValue;

-- Rounding examples
SELECT ROUND(11.3) AS roundedValue;
SELECT ROUND(11.5) AS roundedValue;
SELECT ROUND(11.123456, 4) AS roundedValue;
```

### `day2.md` File

````markdown
# Day 2 - PostgreSQL Learning

## Overview

Today, we focused on essential SQL clauses, operators, and functions in PostgreSQL. This document provides explanations and examples for each key topic to reference later.

---

### 1. Basic Table Operations

- **CREATE TABLE**: Initializes a new table with columns and data types.
- **INSERT INTO**: Adds data to a table.
- **SELECT**: Retrieves data from one or more columns.

Example:

```sql
-- Creating the users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
````

### 2. Data Manipulation

- **UPDATE**: Modifies existing rows.
- **DELETE**: Removes specified rows.

Example:

```sql
-- Update Bob's age
UPDATE users SET age = 26 WHERE name = 'Bob';

-- Delete Charlie's record
DELETE FROM users WHERE name = 'Charlie';
```

### 3. Filtering and Sorting Data

- **WHERE**: Filters rows based on conditions.
- **ORDER BY**: Sorts results (ascending/descending).
- **LIMIT** and **OFFSET**: Controls result set size and starting point.

Example:

```sql
-- Selecting all users over 30, ordered by age
SELECT * FROM users WHERE age > 30 ORDER BY age ASC;
```

### 4. Aggregation and Grouping

- **COUNT, SUM, AVG, MIN, MAX**: Performs calculations on column data.
- **GROUP BY**: Groups results based on one or more columns.
- **HAVING**: Filters groups after `GROUP BY`.

Example:

```sql
-- Count users by age and filter groups with age between 20-30
SELECT age, COUNT(*) FROM users GROUP BY age HAVING age > 20 AND age < 30;
```

### 5. Operators and Conditions

- **IN, BETWEEN, LIKE, NOT, AND, OR**: Filter results based on various conditions.

Example:

```sql
-- Filter users with age not between 26 and 29
SELECT * FROM users WHERE age NOT IN (26, 27, 28);
```

### 6. String Functions

- **UPPER and LOWER**: Convert text to uppercase or lowercase.

Example:

```sql
-- Select distinct names in uppercase
SELECT DISTINCT UPPER(name) FROM users;
```

### 7. Mathematical and Date Functions

- **FLOOR, CEIL, ROUND**: Round numbers to specific values.
- **CAST**: Converts data types.
- **strftime**: Formats date and time.

Example:

```sql
-- Floor, Ceil, and Round examples
SELECT FLOOR(25.6) AS FloorValue,
CEIL(25.3) AS CeiledValue,
ROUND(11.123456, 4) AS RoundedValue;
```

---

### Summary

This session covered foundational SQL skills, allowing us to create tables, manipulate data, and apply essential functions. These operations are foundational for effective database management in PostgreSQL.

```

```
