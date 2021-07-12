INSERT INTO `dw-2205-team4_shrunkendimension`.`sale_quarter_dim`
(`Sales_Quarter_SK`,
`Sales_Quarter`,
`Sales_Month`,
`Sales_Fiscal_Quarter`,
`Sales_Fiscal_Month`)
SELECT
`SalesDate_SK`,
`Sales_Quarter`,
`Sales_Month`,
`Sales_Fiscal_Quarter`,
`Sales_Fiscal_Month` FROM `dw-2205-team4_salesorders`.`saledate_dim` WHERE `Sales_Quarter` IS NOT NULL
GROUP BY Sales_Quarter,Sales_Month,Sales_Fiscal_Quarter,Sales_Fiscal_Month;
