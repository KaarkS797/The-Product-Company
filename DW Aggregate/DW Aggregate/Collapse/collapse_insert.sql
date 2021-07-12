use `dw-2205-team4_collapseddimension`;

INSERT INTO `dw-2205-team4_collapseddimension`.`collapsed_fact_yearly`
(`Customer_Name`,
`Sales_Year`,
`Division`,
`Amount`,
`Quantity`,
`Shipping_Cost`)
SELECT cust.Customer_Name, saledate.Sales_Year, 
CASE WHEN cust.Customer_Division= "PEC" THEN "PEC"
WHEN cust.Customer_Division="TPCE" THEN "TPC EAST"
WHEN cust.Customer_Division="TPCW" THEN "TPC WEST" END ,
sum(sfact.Amount),sum(sfact.Quantity),sum(sfact.Shipping_Cost)
FROM `dw-2205-team4_salesorders`.`sales_fact` sfact
inner join `dw-2205-team4_salesorders`.`saledate_dim` saledate on sfact.SaleDate_SK= saledate.SalesDate_SK
inner join `dw-2205-team4_salesorders`.`customer_dim` cust on sfact.Customer_SK= cust.Customer_SK
WHERE cust.Customer_Name IS NOT NULL 
group by cust.Customer_Name,saledate.Sales_Year,cust.Customer_Division
order by saledate.Sales_Year;
