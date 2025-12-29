create database kulture_hire;
use kulture_hire;
-- I imported the data using Table Data import wizard
select * from kult4sql;
-- I renamed some columns using the alter statement
Alter table kult4sql
Rename column `Time Time:stamp` to Time_stamp;
Alter table kult4sql
Rename column `3_years+_in_a_company` to 3years_in_a_company;
Alter table kult4sql
Rename column `Minimum_salary_expectation_when_you_start_your_career` to Career_Start_Salary_Expectation,
Rename column `What_would_make_you_happier_and_productive_at_work` to Motivation_at_Work, 
Rename column `What_would_frustrate_you_at_work` to Frustration_Cause_at_Work,
Rename column `Preferred_hours_of_work_daily`to Hours_of_Work,
Rename column `Need_for_a_full_week_break_to_have_a_work-life_balance` to Break_from_Work;
Alter table kult4sql
Rename column `Work_for_No_social_impact_company_(1-10)` to No_social_impact_company_rank;

describe kult4sql;
-- Drawing Insights
select count(id) as Total, Career_Aspiration from kult4sql
 group by Career_Aspiration order by Total desc;
 -- Gen Z are most interested in pursuing career as Strategist. While Cyber Security is the least interested career for Gen z  
 
 select count(id) as Total, influencing_factor from kult4sql
 group by influencing_factor order by Total desc;
 -- Parents is the most influencing factor for Gen Z, while movies is the least influencing 
 
 select count(id) as Total, Preferred_working_space from kult4sql
 group by Preferred_working_space order by Total desc;
 -- Most of the Gen Z prefer Hybrid environment most, followed ny On-site, then, Remote.

select count(id) as Total, Motivation_at_Work from kult4sql
 group by Motivation_at_Work order by Total desc;
 -- Learning Environment at workplace is the most preferred benefits among all benefits by Gen Z. It has a major influence.
 
 select count(id) as Total, No_social_impact_company_rank from kult4sql 
 group by No_social_impact_company_rank
 order by Total desc;
 select No_social_impact_company_rank,count(id) as Total from kult4sql
 group by No_social_impact_company_rank
 order by Total desc limit 3;
 -- Much Gen Z care about the social impact of the companies they work in with majority of them selecting '5,7 and 6' as their top 3 choices of rank.
