--------------------------------------------------------------------------------
/*				                 Create Database         	 		          */
--------------------------------------------------------------------------------

CREATE DATABASE auto_parts_unlimited;
--------------------------------------------------------------------------------
/*				             Connect to Database        		  	          */
--------------------------------------------------------------------------------

-- **DO NOT DELETE OR ALTER THE CODE BELOW!**
-- **THIS IS NEEDED FOR CODEGRADE TO RUN YOUR ASSIGNMENT**

\connect auto_parts_unlimited;

--------------------------------------------------------------------------------
/*				          Create Table Statements              	    	      */
--------------------------------------------------------------------------------

-- Customers Table
CREATE TABLE customers (
    cust_id bigserial,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number CHAR(14), 
    email VARCHAR(255),
    street_address VARCHAR(255),
    city VARCHAR(255),
    zip CHAR(5),
    state CHAR(2) 
);

--Customers Email
CREATE TABLE employees (
    employee_id bigserial,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number CHAR(14), 
    email VARCHAR(255),
    street_address VARCHAR(255),
    city VARCHAR(255),
    zip CHAR(5),
    state CHAR(2),
	hire_date DATE,
    salary NUMERIC,
    probation BOOLEAN
);

--Products inventory
CREATE TABLE parts_inventory (
    part_number VARCHAR(20),
    manufacturer VARCHAR,
    quantity INTEGER CHECK (quantity >= 0),
    price NUMERIC (12,2)
);

