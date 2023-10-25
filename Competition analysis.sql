#Who are the current market leaders?
Select f.Current_brands,count(*) as Current_Market_leaders
From fact_survey_responses as f
inner Join dim_repondents as d
on f.Respondent_ID = d.Respondent_ID
group by 1
order by 2 desc;

#What are the primary reasons consumers prefer those brands over ours?

Select Reasons_for_choosing_brands,count(*) as Reason_prefer_Brands
from fact_survey_responses
group by 1
order by 2 desc;
