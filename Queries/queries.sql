-- retirement eligibility
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- created a retirement eligibility table
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;



--Practice join
SELECT first_name, last_name, title
FROM employees as e
LEFT JOIN titles as t ON e.emp_no = t.emp_no



--Drop original retirement_info and recreate table with emp_no
DROP TABLE retirement_info;
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;


-- Joining departments and dept_managers tables
SELECT departments.dept_name, dept_manager.emp_no,dept_manager.from_date,dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

-- Joining departments and dept_managers tables using aliases
SELECT d.dept_name, dm.emp_no,dm.from_date,dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;



-- Join retirement_info and dep_emp to show employee numbers, employee names, and department
SELECT ri.emp_no, ri.first_name, ri.last_name, de.to_date
INTO current_emp
FROM retirement_info as ri
INNER JOIN dept_emp as de 
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');


-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

-- Employee count by department number into new table
SELECT COUNT(ce.emp_no), de.dept_no
INTO dep_retire_count
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;



-- Employee Information List
-- A list of employees with their emp_no,last_name,first_name,gender, to_date, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary, de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');



-- Management List
-- list of managers for each dep. include:
-- dept_no,dept_name, emp_no,last_name,first_name,starting_date,ending_date
SELECT dm.dept_no, d.dept_name, ce.last_name, ce.first_name, dm.from_date, dm.to_date
INTO manager_info
FROM dept_manager as dm
INNER JOIN current_emp as ce
ON (dm.emp_no = ce.emp_no)
INNER JOIN departments as d
ON (dm.dept_no = d.dept_no);


