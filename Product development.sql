##Which area of business should we focus more on our product development? (Branding/taste/availability)

select Reasons_for_choosing_brands,count(*) as reasons
from fact_survey_responses
group by 1
order by 2 desc;