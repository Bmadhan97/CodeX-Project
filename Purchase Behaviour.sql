##Where do respondents prefer to purchase energy drinks?

select Purchase_location,count(*) as prefer_location
from fact_survey_responses
group by 1 
order by 2 desc;

##. What are the typical consumption situations for energy drinks among respondents?

select Typical_consumption_situations,count(*) Total_situation
From fact_survey_responses
group by 1
order by 2 desc;

##What factors influence respondents' purchase decisions, such as price range and limited edition packaging?

select Limited_edition_packaging, count(*) as Survey_answer
from fact_survey_responses
group by Limited_edition_packaging
order by Survey_answer desc;
