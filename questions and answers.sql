--Survival rate by passenger class
select "Pclass" as class_of, count("Pclass") as total_passengers,sum("Survived") as survived,round(cast(sum("Survived") as decimal) * 100 / count("Pclass"), 2) as survival_rate
from titanic
group by class_of
order by survival_rate desc

--Survival rate by travelling alone vs family
select case when "Is_Alone" = 1 then 'Alone' else 'Family' end as travelling_status, round(cast(sum("Survived") as decimal) * 100 / count(*), 2) as survival_rate
from titanic
group by travelling_status
order by survival_rate desc

--Survival rate for single women compared to single men
select "Sex", count(*) as total_single, Sum("Survived") as survived, round(cast(sum("Survived") as decimal) * 100 / count(*), 2) as survival_rate
from titanic
group by "Sex"
order by survival_rate desc

--Survival rate by fare
select  case
        when "Fare" <= 15 then 'Low Fare'
        when "Fare" > 15 and "Fare" <= 50 then 'Medium Fare'
        else 'High Fare'
        end as fare_category,
round(avg("Fare"::numeric), 2) as average_fare,
round(cast(sum("Survived") as DECIMAL) * 100 / count(*), 2) as survival_rate_percent
from titanic
group by fare_category
order by average_fare desc

--Survival rate by age
select
    case
        when "Age" < 6 then 'young child'
        when "Age" >= 6 and "Age" < 13 then 'child'
        when "Age" >= 13 and "Age" < 18 then 'teen'
        when "Age" >= 18 and "Age" < 30 then 'young adult'
        when "Age" >= 30 and "Age" < 50 then 'adult'
        when "Age" >= 50 and "Age" < 65 then 'old adult'
        else 'senior'
    end as age_group,
    count(*) as total_passengers,
	sum("Survived") as survived,
    round(cast(sum("Survived") as decimal) * 100.0 / count(*), 2) as survival_rate_percent
from titanic
group by age_group
order by survival_rate_percent desc