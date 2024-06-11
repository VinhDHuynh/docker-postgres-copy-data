-- Create the "employees" table
CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

-- Insert dummy data into the "employees" table
INSERT INTO employees (name, age, department) VALUES
('John Doe', 30, 'Engineering'),
('Jane Smith', 28, 'Marketing'),
('Michael Johnson', 35, 'Finance');

-- Create the "salaries" table
CREATE TABLE IF NOT EXISTS salaries (
    salary_id SERIAL PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert dummy data into the "salaries" table
INSERT INTO salaries (employee_id, salary) VALUES
(1, 60000.00),
(2, 55000.00),
(3, 70000.00);

-- Create the "addresses" table
CREATE TABLE IF NOT EXISTS addresses (
    address_id SERIAL PRIMARY KEY,
    employee_id INT,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

-- Insert dummy data into the "addresses" table
INSERT INTO addresses (employee_id, address, city, state, postal_code) VALUES
(1, '123 Main St', 'Anytown', 'CA', '12345'),
(2, '456 Elm St', 'Otherville', 'NY', '54321'),
(3, '789 Oak St', 'Sometown', 'TX', '67890');
