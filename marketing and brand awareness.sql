##Which marketing channel can be used to reach more customers?

Select Marketing_channels,count(*) as more_customers
from fact_survey_responses
group by 1 
order by 2 desc;

##How effective are different marketing strategies and channels in reaching our customers?

Select Current_brands,Marketing_channels,Consume_reason,count(*) as customers
from fact_survey_responses
group by 1,2,3
order by 4 desc;