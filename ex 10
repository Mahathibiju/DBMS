-- 1. Departments that do NOT contain job_id 'ST_CLERK'
PROMPT -- Task 1
SELECT department_id
FROM departments
MINUS
SELECT DISTINCT department_id
FROM employees
WHERE job_id = 'ST_CLERK';

-- 2. Countries that have no departments
PROMPT -- Task 2
SELECT country_id, country_name
FROM countries
MINUS
SELECT DISTINCT c.country_id, c.country_name
FROM countries c
JOIN locations l ON c.country_id = l.country_id
JOIN departments d ON l.location_id = d.location_id;

-- 3. Jobs for departments 10, 50, 20 in that order
PROMPT -- Task 3
SELECT job_id, department_id
FROM employees
WHERE department_id = 10
UNION ALL
SELECT job_id, department_id
FROM employees
WHERE department_id = 50
UNION ALL
SELECT job_id, department_id
FROM employees
WHERE department_id = 20;

-- 4. Employees who returned to their original job
PROMPT -- Task 4
SELECT employee_id, job_id
FROM employees e
WHERE job_id = (
    SELECT job_id
    FROM job_history jh
    WHERE jh.employee_id = e.employee_id
    AND start_date = (
        SELECT MIN(start_date)
        FROM job_history
        WHERE employee_id = e.employee_id
    )
);

-- 5. Full outer join of employees and departments
PROMPT -- Task 5
SELECT e.last_name, e.department_id AS emp_dept_id,
       d.department_id AS dept_dept_id, d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.department_id, d.department_id;
