SELECT quat.Sales_Quarter 'Quarter', SUM(sfact.Amount) 'Total Amount'
FROM `dw-2205-team4_shrunkendimension`.`sales_fact_shrunken` sfact
INNER JOIN `dw-2205-team4_shrunkendimension`.`sale_quarter_dim` quat
ON sfact.Sales_Quarter_SK = quat.Sales_Quarter_SK
GROUP BY quat.Sales_Quarter
ORDER BY quat.Sales_Quarter;
