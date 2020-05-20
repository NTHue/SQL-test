/*1b. List all details of Shippers with the output presented in ascending order of shipper
names.*/

select * from Shippers
order by shipper

/*2a. List all employees - you need to display only the details of their First Name, Last
Name, Title, Date of birth and their city of residence.*/

select FirstName, LastName, Title, BirthDate, City 
from employees;

/*4.Retrieve details of all customers that are located in the cities of London or Madrid.*/

select CustomerID,
		CompanyName,
		ContactName,
        ContactTitle,
        Address,
        City,
        Region,
        PostalCode,
        Country,
        Phone,
        Fax
from Customers
where City = 'London' or City = 'Madrid';

/*6. Provide a list of Orders (Order IDs and order dates) made by customer whose ID is
‘Hanar’.*/

select
	OrderID,
    OrderDate
from Orders O inner join Customers C
on O.OrderID = C.OrderID
where C.ContactName = 'Hanar';

/*10) Retrieve the Customer IDs and contact names of all customers who have yet to order any products.*/

select
	CustomerID
    ContactName
from Customers 


/*11) Display the average product price.*/

select
	AVG ('UnitPrice') as "Average product rice"
from Products
group by UnitPrice;

/*12) Prepare a list of cities where customers reside in. The list should not contain any
duplicate cities.*/

select
	distinct city
from customers;

/*13) Retrieve the number of customers who has made orders.*/

select
	count(customerID) as 'number of customers made orders'
from Customers C inner join Orders O
on C.customerID = O.CustomerID
group by CustomerID;

/*Retrieve the total sales made. Assume sales is equal to unit price * quantity.*/

select
	sum(UnitPrice * Quantity) as 'Total Sales'
from OrderDetails
group by UnitPrice, Quantity;



