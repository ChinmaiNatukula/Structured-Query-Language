CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(30),
    joining_date DATE
);
INSERT INTO employee
(emp_name, department, salary, age, city, joining_date)
VALUES
('Rahul', 'IT', 55000, 25, 'Hyderabad', '2022-06-15'),
('Priya', 'HR', 45000, 28, 'Chennai', '2021-03-20'),
('Arun', 'IT', 65000, 30, 'Bangalore', '2020-08-10'),
('Sneha', 'Finance', 52000, 26, 'Hyderabad', '2023-01-12'),
('Kiran', 'Sales', 48000, 24, 'Mumbai', '2022-11-05'),
('Anjali', 'IT', 72000, 32, 'Pune', '2019-07-18'),
('Vijay', 'HR', 40000, 29, 'Hyderabad', '2021-09-25'),
('Meena', 'Finance', 60000, 31, 'Chennai', '2020-02-14'),
('Ravi', 'Sales', 47000, 27, 'Bangalore', '2023-04-08'),
('Divya', 'IT', 58000, 23, 'Hyderabad', '2024-01-10'),
('Suresh', 'Finance', 68000, 35, 'Mumbai', '2018-12-01'),
('Pooja', 'HR', 43000, 26, 'Pune', '2022-05-16'),
('Manoj', 'Sales', 51000, 30, 'Chennai', '2021-11-11'),
('Lakshmi', 'IT', 75000, 34, 'Bangalore', '2019-03-22'),
('Naveen', 'Finance', 56000, 28, 'Hyderabad', '2023-06-19');




//delimeter
create procedure getAllemployee()
degin
select * from employee
end
//delimeter




delimeter//
create procedure getemployeeid(in emp_id decimal(10,2))
begin
select * from employee;
where emp_id=id;
end
delimeter//




DELIMITER //

CREATE PROCEDURE GetEmployeesByDepartment(IN p_dept_name VARCHAR(50))
BEGIN
    SELECT *
    FROM Employee
    WHERE dept_name = p_dept_name;
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE GetEmployeesByCity(IN p_city VARCHAR(50))
BEGIN
    SELECT *
    FROM Employee
    WHERE city = p_city;
END //

DELIMITER ;




DELIMITER //

CREATE PROCEDURE GetEmployeesBySalaryRange(
    IN p_min_salary DECIMAL(10,2),
    IN p_max_salary DECIMAL(10,2)
)
BEGIN
    SELECT *
    FROM Employee
    WHERE salary BETWEEN p_min_salary AND p_max_salary;
END //

DELIMITER ;




DELIMITER //

CREATE PROCEDURE GetEmployeeSalary(
    IN p_emp_id INT,
    OUT p_salary DECIMAL(10,2)
)
BEGIN
    SELECT salary INTO p_salary
    FROM Employee
    WHERE emp_id = p_emp_id;
END //

DELIMITER ;










