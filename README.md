# Pewlett Hackard SQL Analysis

## Overview of Project

### Purpose

After converting our CSV files into a SQL database, our objective is to use the data to prepare for a potential "silver tsunami" in which a large portion of the employees would retire from the company. We will do this by determining the number of employees who are eligible to retire, as well as identify the number of employees who are eligible to participate in a mentorship program.

### Resources

- Data Source: [departments.csv](Data/departments.csv), [dept_emp.csv](Data/dept_emp.csv), [dept_managers.csv](Data/dept_managers.csv), [employees.csv](Data/employees.csv), [salaries.csv](Data/salaries.csv), [titles.csv](Data/salaries.csv)
- Software: PGAdmin 4, PostgreSQL 13.0, Visual Studio Code 1.52.1

## Project Results

### Analysis

###### Retiring Employees <img src='/Resources/unique_titles.png' width = 20% align="right" >


- 90,398 people are retiring (37.6% of the company)
- 62,172 of the retiring employees are in senior/leadership roles (Senior Engineer, Senior Staff, Technique Leader, Manager)

<br/>

###### Mentoring Eligibility <img src='/Resources/mentoring_eligibilty_groupby_titles.png' width = 20% align="right" >

- 1,549 people are eligible for the mentorship program 
- 47% of employees eligible for mentorship are already Senior-level employees  
<br/>

## Summary

### Recommendations

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - New Query to get all staff members born after 12-31-1955 are there enough people in regular staff to be promoted into Senior roles? Recreate unique_titles but for entire company!
2. Are there enough qualified, retirement ready employees in the departments to mentor the next generation of Pewlett Hackard?
  - Need to compare retiring Senior Staff to Regular Staff and look at a mentor-mentee ratio. Is mentee singled to only one year (1965)?

Queries for screenshotted tables in this section can be found in asdfasdf.sql

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)