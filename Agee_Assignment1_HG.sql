--------------------------------------------------------------------------------
/*				                 Create Database         	 		          */
--------------------------------------------------------------------------------

CREATE DATABASE holy_grounds;
--------------------------------------------------------------------------------
/*				             Connect to Database        		  	          */
--------------------------------------------------------------------------------

-- **DO NOT DELETE OR ALTER THE CODE BELOW!**
-- **THIS IS NEEDED FOR CODEGRADE TO RUN YOUR ASSIGNMENT**

\connect holy_grounds;

--------------------------------------------------------------------------------
/*				          Create Table Statements              	    	      */
--------------------------------------------------------------------------------
CREATE TABLE coffee_inventory (
    sku VARCHAR(255),
    name VARCHAR(255),
    roast_type VARCHAR(20) CHECK (roast_type IN ('Dark', 'Medium', 'Light')),
    lbs_on_hand NUMERIC(12,2),
    organic BOOLEAN,
    price_per_lb NUMERIC(12,2)
);
CREATE TABLE sales_transactions (
    receipt_id BIGSERIAL,
    sale_amount NUMERIC(12,2),
    sale_type VARCHAR(255) CHECK (sale_type IN ('Online', 'In-Store')),
    transaction_date TIMESTAMP
);
CREATE TABLE Stores (
    store_id SERIAL,
    store_manager VARCHAR(255) ,
    store_phone CHAR(14),
    store_address VARCHAR(255),
    city VARCHAR(255) ,
    zip CHAR(5),
    state CHAR(2)
);