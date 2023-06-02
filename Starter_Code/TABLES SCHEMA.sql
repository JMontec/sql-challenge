CREATE TABLE departments (
	dept_no VARCHAR(4),
	dept_name VARCHAR(20),
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
	emp_title_id VARCHAR(5),
	title VARCHAR(25),
	PRIMARY KEY (emp_title_id)
);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(25),
	birth_date VARCHAR(10),
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date VARCHAR(10),
	PRIMARY KEY (emp_no)
	FOREIGN KEY (emp_title_id) REFERENCES departments (dept_no);
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no);
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no);
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
);