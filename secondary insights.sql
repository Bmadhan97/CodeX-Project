## Interest in organic drink

select Interest_in_natural_or_organic ,count(*) as total
from fact_survey_responses
group by 1
order by 2 desc;
##consume time  age wise

select f.Consume_time,d.age,count(*) as total
from fact_survey_responses as f
inner join dim_repondents as d
on f.Respondent_ID = d.Respondent_ID
group by 1,2 
order by 3 desc;
