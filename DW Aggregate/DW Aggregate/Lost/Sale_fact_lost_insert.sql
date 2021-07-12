INSERT INTO `dw-2205-team4_lostdimension`.`sales_fact_lost`
(`Customer_SK`,
`Product_SK`,
`Amount`,
`Quantity`,
`Shipping_Cost`)
SELECT 
`Customer_SK`,
`Product_SK`,
sum(`Amount`) ,
sum(`Quantity`),
sum(`Shipping_Cost`) from `dw-2205-team4_salesorders`.`sales_fact` GROUP BY `Customer_SK`,`Product_SK`;


