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




-- Inserting dummy data into users table
INSERT INTO users (name, email, age) VALUES
('David', 'david@example.com', 28),
('Eve', 'eve@example.com', 22),
('Frank', 'frank@example.com', 33),
('Grace', 'grace@example.com', 29),
('Hannah', 'hannah@example.com', 26),
('Isaac', 'isaac@example.com', 31),
('Judy', 'judy@example.com', 27),
('Kathy', 'kathy@example.com', 24),
('Leo', 'leo@example.com', 32),
('Mona', 'mona@example.com', 23),
('Nina', 'nina@example.com', 29),
('Oscar', 'oscar@example.com', 34),
('Paula', 'paula@example.com', 30),
('Quinn', 'quinn@example.com', 21),
('Ryan', 'ryan@example.com', 36),
('Sophie', 'sophie@example.com', 28),
('Tom', 'tom@example.com', 27),
('Uma', 'uma@example.com', 25),
('Victor', 'victor@example.com', 32),
('Wendy', 'wendy@example.com', 22),
('Xander', 'xander@example.com', 33),
('Yara', 'yara@example.com', 29),
('Zach', 'zach@example.com', 26),
('Alice2', 'alice2@example.com', 31),
('Bob2', 'bob2@example.com', 30),
('Charlie2', 'charlie2@example.com', 27),
('David2', 'david2@example.com', 34),
('Eve2', 'eve2@example.com', 22),
('Frank2', 'frank2@example.com', 29),
('Grace2', 'grace2@example.com', 35),
('Hannah2', 'hannah2@example.com', 26),
('Isaac2', 'isaac2@example.com', 31),
('Judy2', 'judy2@example.com', 30),
('Kathy2', 'kathy2@example.com', 24),
('Leo2', 'leo2@example.com', 29),
('Mona2', 'mona2@example.com', 35),
('Nina2', 'nina2@example.com', 33),
('Oscar2', 'oscar2@example.com', 31),
('Paula2', 'paula2@example.com', 28),
('Quinn2', 'quinn2@example.com', 25),
('Ryan2', 'ryan2@example.com', 30),
('Sophie2', 'sophie2@example.com', 26),
('Tom2', 'tom2@example.com', 27),
('Uma2', 'uma2@example.com', 34),
('Victor2', 'victor2@example.com', 22),
('Wendy2', 'wendy2@example.com', 29),
('Xander2', 'xander2@example.com', 28),
('Yara2', 'yara2@example.com', 25),
('Zach2', 'zach2@example.com', 31),
('Alice3', 'alice3@example.com', 26),
('Bob3', 'bob3@example.com', 27),
('Charlie3', 'charlie3@example.com', 28),
('David3', 'david3@example.com', 29),
('Eve3', 'eve3@example.com', 30),
('Frank3', 'frank3@example.com', 31),
('Grace3', 'grace3@example.com', 32),
('Hannah3', 'hannah3@example.com', 33),
('Isaac3', 'isaac3@example.com', 34),
('Judy3', 'judy3@example.com', 35),
('Kathy3', 'kathy3@example.com', 36),
('Leo3', 'leo3@example.com', 37),
('Mona3', 'mona3@example.com', 38),
('Nina3', 'nina3@example.com', 39),
('Oscar3', 'oscar3@example.com', 40),
('Paula3', 'paula3@example.com', 41),
('Quinn3', 'quinn3@example.com', 42),
('Ryan3', 'ryan3@example.com', 43),
('Sophie3', 'sophie3@example.com', 44),
('Tom3', 'tom3@example.com', 45),
('Uma3', 'uma3@example.com', 46),
('Victor3', 'victor3@example.com', 47),
('Wendy3', 'wendy3@example.com', 48),
('Xander3', 'xander3@example.com', 49),
('Yara3', 'yara3@example.com', 50),
('Zach3', 'zach3@example.com', 51),
('Alice4', 'alice4@example.com', 52),
('Bob4', 'bob4@example.com', 53),
('Charlie4', 'charlie4@example.com', 54),
('David4', 'david4@example.com', 55),
('Eve4', 'eve4@example.com', 56),
('Frank4', 'frank4@example.com', 57),
('Grace4', 'grace4@example.com', 58),
('Hannah4', 'hannah4@example.com', 59),
('Isaac4', 'isaac4@example.com', 60),
('Judy4', 'judy4@example.com', 61),
('Kathy4', 'kathy4@example.com', 62),
('Leo4', 'leo4@example.com', 63),
('Mona4', 'mona4@example.com', 64),
('Nina4', 'nina4@example.com', 65),
('Oscar4', 'oscar4@example.com', 66),
('Paula4', 'paula4@example.com', 67),
('Quinn4', 'quinn4@example.com', 68),
('Ryan4', 'ryan4@example.com', 69),
('Sophie4', 'sophie4@example.com', 70),
('Tom4', 'tom4@example.com', 71),
('Uma4', 'uma4@example.com', 72),
('Victor4', 'victor4@example.com', 73),
('Wendy4', 'wendy4@example.com', 74),
('Xander4', 'xander4@example.com', 75),
('Yara4', 'yara4@example.com', 76),
('Zach4', 'zach4@example.com', 77),
('Alice5', 'alice5@example.com', 78),
('Bob5', 'bob5@example.com', 79),
('Charlie5', 'charlie5@example.com', 80),
('David5', 'david5@example.com', 81),
('Eve5', 'eve5@example.com', 82),
('Frank5', 'frank5@example.com', 83),
('Grace5', 'grace5@example.com', 84),
('Hannah5', 'hannah5@example.com', 85),
('Isaac5', 'isaac5@example.com', 86),
('Judy5', 'judy5@example.com', 87),
('Kathy5', 'kathy5@example.com', 88),
('Leo5', 'leo5@example.com', 89),
('Mona5', 'mona5@example.com', 90),
('Nina5', 'nina5@example.com', 91),
('Oscar5', 'oscar5@example.com', 92),
('Paula5', 'paula5@example.com', 93),
('Quinn5', 'quinn5@example.com', 94),
('Ryan5', 'ryan5@example.com', 95),
('Sophie5', 'sophie5@example.com', 96),
('Tom5', 'tom5@example.com', 97),
('Uma5', 'uma5@example.com', 98),
('Victor5', 'victor5@example.com', 99),
('Wendy5', 'wendy5@example.com', 100);
