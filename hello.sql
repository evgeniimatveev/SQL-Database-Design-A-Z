-- hello.sql
-- Simple SQL quick flow demo

-- 1. Create table
CREATE TABLE employees (
    id        INT PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary    NUMERIC(10, 2)
);

-- 2. Insert sample data
INSERT INTO employees (id, full_name, department, salary) VALUES
(1, 'Anna Smith',    'IT',      65000),
(2, 'John Miller',   'IT',      72000),
(3, 'Maria Garcia',  'HR',      52000),
(4, 'Peter Johnson', 'Finance', 58000);

-- 3. Simple aggregation: avg salary by department
SELECT
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;
