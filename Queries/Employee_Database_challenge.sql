-- Retirement Titles Table tha holds all the titles of current employees 
-- who were born between 1/1/1952 and 12/31/1955
-- Use DISTINCT ON to create a table that contains the most recent title
-- Use COUNT() to create a final table that has a number of retirement age employes by most recent job title
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, 
rt.first_name, 
rt.last_name, 
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;


-- Query to count the number of employees who are about to retire (by job title)
-- Retrieve # of titles from unique_titles, create retiring_titles to hold info into
-- group by title, order by desc, export to  retiring_titles.csv
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;


-- query to create Mentorship Eligibility table
-- Retrieve emp_no, first_name, last_name, and birth_date from employees table
-- Retrieve from_date and to_date from dept_emp table, retrieve title from titles table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, 
 		de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;