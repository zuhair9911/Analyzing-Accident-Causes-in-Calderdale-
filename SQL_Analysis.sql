SET SQL_SAFE_UPDATES = 0;

/* total number of accidents */
select count(*) from accidents;

/* total numbers of vehicles damaged */
select SUM(`Number of Vehicles`) from accidents;

/* total number of accidents by Road Surface */
select `Road Surface`, Count(`Road Surface`) as no_of_accidents_by_roadsurface 
from accidents
group by `Road Surface`
order by no_of_accidents_by_roadsurface desc;

/* total number of accidents by Lighting Conditions */
Select `Lighting Conditions`, count(`Lighting Conditions`) as no_of_accidents_by_lightingconditions
from accidents
group by `Lighting Conditions`
order by no_of_accidents_by_lightingconditions desc;

/* total number of accidents by Weather Conditions */
Select `Weather Conditions`, count(`Weather Conditions`) as no_of_accidents_by_WeatherConditions
from accidents
group by `Weather Conditions`
order by no_of_accidents_by_WeatherConditions DESC;

/* total number of accidents by Road Class */
Select `1st Road Class & No`, count(`1st Road Class & No`) as no_of_accidents_by_roadclass
from accidents
group by `1st Road Class & No`
order by no_of_accidents_by_roadclass desc;

/* analyzing road type A and Unclassified and lighting conditions */

Select `1st Road Class & no`, `Lighting Conditions`, count(`Lighting Conditions`) 
from accidents
where `1st Road class & No` = "Unclassified"
group by `Lighting Conditions`;

Select `1st Road Class & no`, `Lighting Conditions`, count(`Lighting Conditions`) 
from accidents
where `1st Road class & No` = "A"
group by `Lighting Conditions`;


/* analyzing road type A and Unclassified and road surface */

Select `1st Road Class & no`, `Road Surface`, count(`Road Surface`) 
from accidents
where `1st Road class & No` = "Unclassified"
group by `Road Surface`;

Select `1st Road Class & no`, `Road Surface`, count(`Road Surface`) 
from accidents
where `1st Road class & No` = "A"
group by `Road Surface`
