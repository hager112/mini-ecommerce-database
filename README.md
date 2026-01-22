I chose the entities Customers, Orders, Products and Payments because they cover the most important parts of a mini e-commerce system. A customer can place an order that contains products and is then connected to a payment. This structure reflects how a real e-commerce system works and makes the database easy to understand.

Regarding normalization, I tried to avoid duplicated data by separating information into different tables. For example, customer information is stored only in the Customers table and not in Orders. This makes the database more structured and easier to update when changes are needed.

To protect the data, primary keys are used in all tables to uniquely identify each row. Foreign keys are used to connect the tables and ensure that the relationships between them are correct. Some fields are also set as unique to avoid duplicate data.

As a next step, I would improve the database by adding more constraints and validation, such as clearer rules for orders and payments. I would also consider adding views or stored procedures for more advanced functionality.
