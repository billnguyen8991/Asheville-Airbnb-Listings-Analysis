--------------			Data Cleaning		------------

-- Drop unneccessary columns and data
alter table listings
drop column license, neighbourhood_group, lattitude, longtitude;

delete from listings
where number_of_reviews = 0;

--Update missing value in price
update l 
set l.price = n.avg_price
from listings l
join (
select neighbourhood, room_type, AVG(price) as avg_price
from listings
where price is not null
group by neighbourhood, room_type) as n
on l.neighbourhood = n.neighbourhood
where l.price is null

--------		Ashevillege price ovewview			----------
select
		room_type,
		neighbourhood,
		MAX(price) as max_price,
		MIN(price) as min_price,
		AVG(price) as avg_price
from listings
group by room_type, neighbourhood
order by neighbourhood



--------		Overview Ashivillege price and room distribution  ------
with quantile_cte as (
SELECT DISTINCT
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY price) OVER () AS Low_price,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) OVER () AS Median_price,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY price) OVER () AS High_price
FROM listings),
price_distribution as (
select room_type,
	case when l.price < Low_price then 'Low'
	when l.price <= Median_price then 'Lower_mid'
	when l.price <= High_price then 'Upper_mid'
	else 'High'
	end as price_category
from listings l
cross join quantile_cte q)
select	room_type,
		price_category,
		COUNT(*) as listing_count,
		ROUND(100*count(*)/ (select COUNT(*) from listings),2) as percentage_of_total_listing
from price_distribution
group by price_category, room_type
order by room_type ,
	case price_category
	when 'Low' then 1
	when 'Lower_mid' then 2
	when 'Upper_mid' then 3
	 else 4
	end;




------			Affect of minimum night on average price?		------
select minimum_nights,
		avg(price) as avg_price
from listings
group by minimum_nights
order by AVG(price) desc

select top 5 neighbourhood,
		AVG(minimum_nights) as avg_min_night,
		AVG(price) as avg_price
from listings
group by neighbourhood
order by AVG(price) desc


------					Most active neighborhood				------
select neighbourhood,
	count(listing_id) as guest_activity
from listings l
join reviews r
on l.id = r.listing_id
group by neighbourhood
order by count(listing_id) desc


------				 Seasonal Demands			------
select year(date) as year,
	count(*) as activity
from reviews
group by year(date)
order by COUNT(*) desc

select month(date) as month,
	count(*) as activity
from reviews
group by month(date)
order by COUNT(*) desc



------			Listing Activity per neighbourhood			------
select neighbourhood,
	COUNT(r.date) as guest_acitivity,
	AVG(l.price) as avg_nightly_rate
from listings l
join reviews r
on l.id = r.listing_id
group by neighbourhood
order by guest_acitivity

------			 Room Distribution			------
with room_dist as (select neighbourhood,
		room_type,
		round(COUNT(*)*100/(select COUNT(*) from listings),2) as room_percentage,
		row_number() over ( partition by neighbourhood order by round(COUNT(*)*100/(select COUNT(*) from listings),2) desc) as rn
from listings
group by neighbourhood, room_type)
select neighbourhood,
		room_type,
		room_percentage
from room_dist
where rn = 1
order by room_percentage desc


------			 review & demand analysis			------
select MONTH(date) as month,
		COUNT(*) as total_review
from reviews
group by MONTH(date)
order by month

select YEAR(date) as year,
		COUNT(*) as number_reviews
from reviews
group by YEAR(date)
order by year

------ Airbnb Review and Activity Trends Over Time			------
select top 10 YEAR(date) as year,
		MONTH(date) as month,
		COUNT(*) as total_review
from reviews
group by YEAR(date), MONTH(date)
order by total_review desc


SELECT 
    YEAR(date) AS year,
    MONTH(date) AS month,
    COUNT(DISTINCT listing_id) AS active_listings,
    COUNT(*) AS review_count
FROM reviews
GROUP BY YEAR(date), MONTH(date)
ORDER BY year, month;




