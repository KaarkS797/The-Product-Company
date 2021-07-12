INSERT INTO `dw-2205-team4_lostdimension`.`customer_dim`
(`Customer_SK`,
`Customer_ID(NK)`,
`Customer_Name`,
`Customer_Address1`,
`Customer_Address2`,
`Customer_City`,
`Customer_State`,
`Customer_Zip`,
`Customer_Type_ID`,
`Customer_Type_Name`,
`Customer_Division`)
SELECT `customer_dim`.`Customer_SK`,
    `customer_dim`.`Customer_ID(NK)`,
    `customer_dim`.`Customer_Name`,
    `customer_dim`.`Customer_Address1`,
    `customer_dim`.`Customer_Address2`,
    `customer_dim`.`Customer_City`,
    `customer_dim`.`Customer_State`,
    `customer_dim`.`Customer_Zip`,
    `customer_dim`.`Customer_Type_ID`,
    `customer_dim`.`Customer_Type_Name`,
    `customer_dim`.`Customer_Division`
FROM `dw-2205-team4_salesorders`.`customer_dim`;