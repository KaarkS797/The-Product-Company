use `dw-2205-team4_lostdimension`;
select cust.Customer_Name, prod.Product_Description, sfact.Quantity, sum(sfact.Amount) as Total_Amount
from `sales_fact_lost` sfact inner join `customer_dim` cust on cust.Customer_SK = sfact.Customer_SK
inner join  `product_dim` prod on prod.Product_SK = sfact.Product_SK
group by cust.Customer_Name
order by sfact.Amount desc;