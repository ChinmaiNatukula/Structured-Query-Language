

USE cdg_jfs_hyd_058;

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO department VALUES
(10, 'HR', 'Hyderabad'),
(20, 'IT', 'Bangalore'),
(30, 'Finance', 'Chennai'),
(40, 'Sales', 'Mumbai');

SELECT * FROM department;


SELECT d.dept_id
FROM departments d
Left join employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

SELECT e.emp_name, d.dept_name, d.location
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.location IN ('Hyderabad', 'Bangalore', 'Chennai');


SELECT d.dept_id
FROM department d
LEFT JOIN employee e
ON d.dept_id = e.dept_id
WHERE e.dept_id IS NULL;



select e.emp_name,salary,d.dept_name,d.location
from employee e
Inner join department d
on e.dept_id=d.dept_id;



SELECT
    e.employee_name AS employee_name,
    e.salary AS employee_salary,
    m.employee_name AS manager_name,
    m.salary AS manager_salary
FROM employee e
INNER JOIN employee m
ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;




select e.emp_name,d.dept_name
from department d
inner join employee e
on d.dept_id=e.emp_id;



select e.emp_name,e.salary,d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id
where e.salary between 45000 and 70000;


select e.emp_id,e.emp_name,d.location
from employee e
inner join department d
on e.emp_id=d.dept_id;



SELECT e.emp_name,d.dept_name
FROM employee e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales';


select e.emp_name,e.salary,d.dept_name
from employee e
inner join department d
on e.dept_id=d.dept_id
where e.salary>50000; 



select e.emp_name,e.gender,d.location
from employee e
inner join department d
on e.dept_id=d.dept_id
where gender='female';



SELECT e.emp_name AS employee_name,
    m.employee_name AS manager_name
FROM employee e
INNER JOIN employee m
ON e.manager_id = m.emp_id;



select e.emp_name,
      m.employee_name AS manager_name
from employee e
inner join employee m
on e.manager_id = m.emp_id
where m.employee_name = 'Amit';




SELECT
    e.employee_name,
    e.manager_id
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id
WHERE m.emp_id IS NULL;


SELECT d.dept_id,
    d.dept_name
FROM department d
LEFT JOIN employee e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;


SELECT
    e.emp_name,
    e.salary,
    d.dept_name,
    d.location
FROM employee e
LEFT JOIN department d
ON e.dept_id = d.dept_id;



SELECT
    e.emp_name,
    e.salary AS employee_salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM employee e
INNER JOIN employee m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;











