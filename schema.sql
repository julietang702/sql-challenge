-- titles table
CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

-- Create the "employees" table
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY(emp_no)
);



--SELECT * FROM employees;
-- departments table
Create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

Select * from departments;
-- dept manager table
create table dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (dept_no, emp_no)
);

Select * from dept_manager;
--dept emp table
create table dept_emp(
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) references employees (emp_no),
	FOREIGN KEY (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
); 

Select * from dept_emp;

--salaries table
CREATE TABLE salaries (
	emp_no INT Primary KEY, 
	salary INT,
	FOREIGN KEY (emp_no) references employees (emp_no)
);

Select * from salaries;


