SELECT quat.Sales_Fiscal_Quarter 'Fiscal_Quarter', quat.Sales_Fiscal_Month 'Fiscal_Month', 
SUM(sfact.Amount) 'Total Amount'
FROM `dw-2205-team4_shrunkendimension`.`sales_fact_shrunken` sfact
INNER JOIN `dw-2205-team4_shrunkendimension`.`sale_quarter_dim` quat
ON sfact.Sales_Quarter_SK = quat.Sales_Quarter_SK
GROUP BY quat.Sales_Fiscal_Month, quat.Sales_Fiscal_Quarter
ORDER BY quat.Sales_Fiscal_Quarter desc;