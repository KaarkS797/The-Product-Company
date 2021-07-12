SELECT Division,sum(Quantity), sum(Amount), RANK() OVER( order by sum(Amount) desc) as `Rank`
from `dw-2205-team4_collapseddimension`.`collapsed_fact_yearly`
group by Division