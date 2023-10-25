##a. What do people think about our brand? (overall rating)

select Brand_perception,count(*) as brand_rating
from fact_survey_responses
group by 1
order by 2 desc;

##Which cities do we need to focus more on?

select c.City,c.Tier, count(*) as total_count
from dim_repondents as r
inner join dim_cities as c
on r.City_ID = c.City_ID
group by 1,2
order by 3 ;