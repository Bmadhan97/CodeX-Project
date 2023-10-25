# who prefers energy drink more?
SELECT COUNT(*) as Count , r.gender FROM fact_survey_responses as f 
inner join dim_repondents as r on r.Respondent_ID = f.Respondent_ID
group by r.Gender;


#Which age group prefers energy drink more ?
select count(*)as Energy_drink_count,d.age
From fact_survey_responses as f
inner join dim_repondents as d
on f.Respondent_ID = d.Respondent_ID
group by d.age;

#Which type of marketing reaches the most youth (15-30) ?

select count(*) as count, f.Marketing_channels
From fact_survey_responses as f
inner join dim_repondents as d
on f.Respondent_ID = d.Respondent_ID
where d.age in ('15-18','19-30')
group by 2

