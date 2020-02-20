CREATE TABLE DEPT_EMP (
	emp_no integer REFERENCES employees(emp_no),
	dept_no text REFERENCES departments(dept_no),
	from_date date,
	to_date date
);


CREATE TABLE dept_manager (
	dept_no	text REFERENCES departments(dept_no),
	emp_no integer REFERENCES employees(emp_no),	
	from_date date, 
	to_date date
);


CREATE TABLE salaries (
	emp_no integer REFERENCES employees(emp_no),
	salary int,
	from_date date,
	to_date date

);



CREATE TABLE title (
	emp_no integer REFERENCES employees(emp_no),
	title text,
	from_date date,
	to_date date

);

CREATE TABLE employees (
	emp_no int primary key
	birth_date text, 
	first_name text, 
	last_name text, 
	gender text, 
	hire_date text


);



