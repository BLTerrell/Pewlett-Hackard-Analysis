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
ORDER BY rt.emp_no, rt.to_date 
DESC;