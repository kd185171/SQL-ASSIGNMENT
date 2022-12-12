# SQL-ASSIGNMENT

ITEM_SALES

Item_ID Name Sales_Date Sales_Price

1 Apple 10/12/2022 50

1 Apple 1/11/2022 50

2 Pear 31/12/2022 100

2 pear 3/12/2022 100

3 grapes 3/3/2022 200

ITEM_DISCOUNT

Item_ID Name discount_Price Date_From Date_To

1 Apple 10 1/12/2022 31/12/2022

2 Pear 20 1/12/2022 5/12/2022

1.-> write a sql to show itemid, name, sales_price - disc_pric if the sales_date falls withing the date

range, below is the expected output.

item_id name Sales_Date overall price

1 apple 10/12/2022 40

1 apple 1/11/2022 50

2 Pear 31/12/2022 100

2 pear 3/12/2022 80

3 grapes 3/3/2022 200

2.-> Write a SP to insert emp record to the table, if the record already exists, update the values. SP has only one parameter i.e. table valued parameter.

employee

empid empname salary

Step 1: create a user defined table type

Step 2 : pass the above create table type as ip param to SP

3.-> write a SP to create a simple calculator.

input params – number1, number2, operation and output param – result

4.-> Understand and analyze the attached SP and implement a retry support in case of deadlocks.

5.-> Explore hierarchal queries and write a query to display a organization hierarchy
