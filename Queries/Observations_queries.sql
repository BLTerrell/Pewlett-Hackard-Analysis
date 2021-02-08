-- Summary Question #1
-- get the total number of non-retiring employees by title
SELECT COUNT(e.emp_no) as remaining_employees, title
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no
WHERE t.to_date = ('9999-01-01')
AND e.birth_date > ('1955-12-31')
GROUP BY t.title
ORDER BY t.title;

-- Get total number of retiring employees by sorted by title
SELECT COUNT(emp_no) AS retiring_employees, title
FROM unique_titles
GROUP BY title
ORDER BY title;

-- Summary Question #2
-- Using unique_titles and dept_info GROUP BY department (only Senior level employees)
SELECT COUNT(ut.emp_no) AS retiring_senior_emp, di.dept_name 
FROM unique_titles AS ut
INNER JOIN dept_info AS di
ON ut.emp_no = di.emp_no
WHERE ut.title LIKE 'Senior%'
GROUP BY di.dept_name
ORDER BY di.dept_name;


-- Get available mentees by department
SELECT COUNT(me.emp_no) AS eligible_for_mentor, d.dept_name
FROM mentorship_eligibility AS me
INNER JOIN dept_emp AS de
ON me.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
GROUP BY d.dept_name
ORDER BY d.dept_name;