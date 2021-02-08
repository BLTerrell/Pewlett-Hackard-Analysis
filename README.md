# Pewlett Hackard SQL Analysis

## Overview of Project

### Purpose

After converting our CSV files into a SQL database, our objective is to use the data to prepare for a potential "silver tsunami" in which a large portion of the older employees would retire from the company. We will do this by determining the number of employees who are eligible to retire, as well as identify the number of employees who are eligible to participate in a mentorship program.

### Resources

- Data Source: [departments.csv](Data/departments.csv), [dept_emp.csv](Data/dept_emp.csv), [dept_manager.csv](Data/dept_manager.csv), [employees.csv](Data/employees.csv), [salaries.csv](Data/salaries.csv), [titles.csv](Data/salaries.csv)
- Software: PGAdmin 4, PostgreSQL 13.0, Visual Studio Code 1.52.1

## Project Results

### Data Generated
- [retirement_titles.csv](Data/retirement_titles.csv)
- [unique_titles.csv](Data/unique_titles.csv)
- [retiring_titles.csv](Data/retiring_titles.csv)
- [mentorship_eligibility.csv](Data/mentorship_eligibility.csv)

### Analysis

###### Retiring Employees <img src='/Resources/unique_titles.png' width = 25% align="right" alt="Retiring Employees Grouped By Title" title="Retiring Employees Grouped By Title">


- 90,398 people are retiring (37.6% of the company).
- 62,172 of the retiring employees are in senior/leadership roles (Senior Engineer, Senior Staff, Technique Leader, Manager).

<br/>
<br/>

###### Mentoring Eligibility <img src='/Resources/mentoring_eligibilty_groupby_titles.png' width = 25% align="right" alt="Mentor Eligble Employees Grouped By Title" title="Mentor Eligble Employees Grouped By Title">

- 1,549 people are eligible for the mentorship program.
- 47% of employees eligible for mentorship are already Senior-level employees.
<br/>

## Summary

### Observations
###### Queries that resulted in the screenshots in this section can be found in [Observations_queries.sql](Queries/Observations_queries.sql)


1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    - The below tables represent the retiring employees (on the left) and the remaining employees (on the right). From these tables you can interpret that if Pewlett-Hackard is going to promote from within then they will only have: 2,498 Assistant Engineers to fill 14,222 open Engineering positions; 21,698 Engineers to fill 29,414 Senior Engineering positions; and 17,890 Staff employees to fill 28,254 Senior Staff positions. If they plan to maintain the same quantity of employees then they will need to hire from outside the company.
    
    <img src='/Resources/retiring_employees_by_title.png' width = 40% alt="Retiring Employees Grouped By Title" title="Retiring Employees Grouped By Title"> <img src='/Resources/remaining_employees_by_title.png' width = 42% alt="Remaining Employees Grouped By Title" title="Remaining Employees Grouped By Title">
    <br/>
2. Are there enough qualified, retirement ready employees in the departments to mentor the next generation of Pewlett Hackard?
    - The below tables represent the Senior-level retiring employees (on the left) and the mentor-eligible employees (on the right). You can see that if every Senior-level retiree from each department decided to mentor an eligible employee then there would be at least 15 mentors for each mentee. There are more than enought qualified, retiremtn ready employees in each department to mentor the next generation. Even if only 7% of the Senior-level retirees decided to become mentors, I think the company should expand the pool of eligible mentees. 
    
    <img src='/Resources/retiring_senior_employees.png' width = 45% alt="Retiring Senior Employees By Department" title="Retiring Senior Employees By Department"> <img src='/Resources/eligible_for_mentor.png' width = 44.8%  alt="Employees Eligible for Mentor By Department" title="Employees Eligible for Mentor By Department"> 
