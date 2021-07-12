
INSERT INTO `dw-2205-team4_shrunkendimension`.`sales_fact_shrunken`
(`Customer_SK`,
`Product_SK`,
`Sales_Quarter_SK`,
`InvoiceNumber(DD)`,
`Amount`,
`Quantity`,
`Discounted`,
`Shipping_Cost`)
SELECT
cust.Customer_SK,
prod.Product_SK,
quat.Sales_Quarter_SK,
sfact.`InvoiceNumber(DD)`,
sum(sfact.Amount),
sum(sfact.Quantity),
sfact.Discounted,
sum(sfact.Shipping_Cost)
FROM 
`dw-2205-team4_salesorders`.`sales_fact` sfact inner join
`dw-2205-team4_shrunkendimension`.`customer_dim` cust on sfact.Customer_SK = cust.Customer_SK
inner join  `dw-2205-team4_shrunkendimension`.`product_dim` prod on sfact.Product_SK = prod.Product_SK
inner join `dw-2205-team4_shrunkendimension`.`sale_quarter_dim` quat on sfact.SaleDate_SK = quat.Sales_Quarter_SK
Group by cust.Customer_SK, prod.Product_SK,quat.Sales_Quarter_SK; 
