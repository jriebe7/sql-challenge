create table Departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

create table Titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

create table Employees (
    emp_no INTEGER NOT NULL,
    emp_title VARCHAR NOT NULL,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES Titles (title_id)
);

create table Dept_Emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

create table Dept_Manager (
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

create table Salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);