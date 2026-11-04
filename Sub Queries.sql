CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);
INSERT INTO Department VALUES
(10,'HR'),
(20,'IT'),
(30,'Finance'),
(40,'Sales'),
(50,'Marketing');

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    salary DECIMAL(10,2),
    dept_id INT,
    experience INT,
    FOREIGN KEY(dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Employee VALUES
(101,'Rahul',50000,10,3),
(102,'Kiran',45000,10,2),
(103,'Anita',65000,20,5),
(104,'Priya',70000,20,6),
(105,'Sneha',80000,20,8),
(106,'Vijay',55000,30,4),
(107,'Ajay',60000,40,5),
(108,'Ravi',40000,30,1),
(109,'Meena',75000,40,7),
(110,'Arun',35000,30,1);



SELECT *
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE emp_name = 'Rahul'
);







SELECT *
FROM employees
WHERE salary < (
    SELECT salary
    FROM employees
    WHERE emp_name = 'Priya'
);





SELECT *
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Vijay'
);






SELECT *
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Vijay'
)







SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);






SELECT *
FROM employees
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE dept_name IN ('HR', 'IT')
);





SELECT *
FROM employees
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE dept_name IN ('Finance', 'Sales')
);







