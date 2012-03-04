#Detailed Case Description

## Introduction
The Restaurant and Catering Management System intends to provide restaurants a real-time monitoring system of their product and raw material inventories, employees, and finances.

## Features / Modules
* Employee and Supplier Management Module
This module provides the user a system that manages 3 types of people/employees? in his restaurant-- Admins, Employees and Supliers. The admin users are the only ones that has access to the system.

### CRUD Admin
    * User Profile
        * Username
        * Password
        * Employee details
        Admin users are also employees. Hence, Their profile also includes employee details/profile as show below.

### CRUD employee
Employee includes everyone who works for the restaurant. As mentioned earlier, an Admin User is a special type of employee.

    * Employee Profile
        * Name
        * Role
            eg. Waiter, Cashier, Driver, Manager
        * Salary
        * ID Numbers
        * TIN
        * SSS
        * PhilHealth
        * Contact Information
        * Address
        * Email
        * Telephone Number
    * On Destroy
      Instead of deleting the employee, the system will only provide the user a way of toggling employee status from active to inactive.

### CRUD supplier
    * Supplier Profile
        * Company Name
        * Address
        * TIN
        * Email
        * Contact Number

## Inventory Module
This module monitors 4 types of Items in the restaurant-- raw materials, products, utensils and vehicles. The system provides CRUD for each item type.

### Raw Materials
    * details?
        * name
        * supplier
        * stock quantity available
        * price per unit
### Products
This item corresponds to the dishes served by the restaurant or caterer. The collection of products is also known as the menu.
    * details
        * Name
        * stock quantity available
        * price per unit

### Utensils
    * details
        * name
        * quantity
        * purchase date

### Vehicles
    * details
        * model
        * registration number
        * purchase date
        * registration date
        * employee id

### Accounting Module
    * Transactions
        * transaction type
        * purchase
        * sales
        * product
        * receipt number
        * price
        * quantity
        * employee in charge
        * date & time



## Entities and Relationships
* Entities (Attributes):
    * Employee (id, lastname, firstname, role, salary, tin, sss_no, philhealth, address, email, telephone_no)
    * Admins (id, employee_id, username, password)
    * Supplier (id, address, email, name, tin, telephone_no)
    * RawMaterials (id, supplier_id, name, stock_qty, price)
    * Products (id, name, stock_qty, price)
    * ProductMaterials(id, raw_material_id, product_id, quantity)
    * Transactions (id, product_id, receipt_no, price, quantity, employee_id, datetime, transaction_type)
    * Utensils (id, name, quantity, purchase_date)
    * Vehicles (id, model, registration_no, purchase_date, registration_date, employee_id)

* Relationships:
    * Employee - Admin
    * Supplier - RawMaterials
    * RawMaterials - ProductMaterials
    * ProductMaterials - Products
    * Products - Transactions
    * Vechicle - Employee
    * Utensils - Utensils

## UML Diagram
![UML Diagram](https://github.com/jbvillarante/Team-Gutom/raw/master/public/mp.jpg)