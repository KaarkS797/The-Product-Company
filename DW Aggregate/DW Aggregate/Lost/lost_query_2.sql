use `dw-2205-team4_lostdimension`;
select  prod.Product_Description, sfact.Shipping_Cost , sfact.Quantity, sum(sfact.Amount) as Total_Amount
from `sales_fact_lost` sfact 
inner join  `product_dim` prod on prod.Product_SK = sfact.Product_SK
group by prod.Product_Description
order by sfact.Amount desc;