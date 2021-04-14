

## Git
Create a new branch to complete the tasks in this assessment. Commit your answers to the new branch in whatever manner you see fit. When you are done, return this directory/repository to the sender, in a zip archive. 

## SQL 
In this repository, you will find three csv files which represent three tables for Cool Business LLC. For example, to do a select all against the customers table, write:
```
SELECT
    *
FROM
    customers
```

Some general notes:
* `product_sku` in the `products` table is analogous to `product_id` in the `orders` table.
* `cust_no` in the `orders` table is analogous to `customer_number` in the `customers` table.

Please write one SQL query per question below which satisifes the question/requirement. Name each one `SQL_<question_number>.sql`, substituting the question number into the file name. 
1. How many unique customers have had any transaction with Cool Business in 2021? 
2. What are the last names of the customers who purchased tyx/q/109 in February 2021?
3. How many total `orders` (including *ALL* `transact_types`) were made for fff/x/990?
4. How many `orders` with a `transact_type` of `SALE` were to customers in the state of New Jersey? The state code `NJ` is in the `address` field in the `customers` table.
5. How many unique customers have had sucessful, non-returned transactions with Cool Business in 2021? Do not include customers who have *not* had a succesful transaction in 2021. A sucessful transaction is one which is of transact_type `SALE`, and has no subsequent return against the same `order_number`.
6. Cool Business needs a list of all the customers with a `VOID` order for any Product ID/SKU that starts with the letter `t`. This list will then be loaded into an email tool for a personalized email campaign. Write a query which returns a table with the purchase dates, customer numbers, and first names of this group. In cases where first name is missing in the `customers` table, the string value `"Customer"` should be substituted. Assume the missing-first-name rows are `NULL` if these CSV files were loaded into a SQL database.
7. Generate a count of customers who have made 3 or more purchases.

## Coding 
In the language of your choice, write a script which:

* Calls the City Bikes REST API's (http://api.citybik.es/v2/) `networks` endpoint to retrieve information about bike shares around the world.
* Creates a local CSV file containing 1 row for each network, with the following details only: Name | Company | Country

Create a folder called `coding` and put your script along with any necessary files for your answer.


## Web Marketing
For each of the below, briefly explain -- no need for more than a few sentences.
* How do marketing tags like Google Analytics track user behaviors on the Web? 
* What is a Web "event"? 

Save your answers in a file called web.txt.



