#What are the preferred ingredients of energy drinks among respondents?
Select f.Ingredients_expected, count(*) as Total_Count
from fact_survey_responses as f
inner join dim_repondents as d
on f.Respondent_ID = d.Respondent_ID
group by 1;

#What packaging preferences do respondents have for energy drinks ?


SELECT COUNT(*) AS total_count,f.Packaging_preference,r.age FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by f.Packaging_preference, r.age
order by total_count desc;

