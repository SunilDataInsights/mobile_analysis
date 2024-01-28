use mobile_analysis;
select * from mobile;

-- check mobile features and proce list--
select phone_name, price from mobile;

-- find out the price of 5 most expensive phones--
select * from mobile
order by price desc
limit 5;

-- find out the price of 5 most cheapest phones--
select * from mobile
order by price asc
limit 5;

-- list of top 5 samsung phones with price and all features--
select * from mobile where Brands = "samsung"
order by price desc
limit 5;

-- Must have android phone list then top 5 High Price android phones--
select * from mobile 
where Operating_System_Type = "Android"
order by Price desc
limit 5;

-- Must have android phone list then top 5 Lower Price android phones--
select * from mobile 
where Operating_System_Type = "Android"
order by Price asc
limit 5;

-- Must have IOS phone list then top 5 High Prices IOS Phones--
select * from mobile
where Operating_System_Type = "IOS"
order by price desc
limit 5;

-- Must have IOS phone list then top 5 lower Prices IOS Phones--
select * from mobile
where Operating_System_Type = "IOS"
order by price asc
limit 5;

-- write a query which phone support 5G and also top 5 phone with 5G support --
select * from mobile
where 5G_Availability = "yes"
order by price desc
limit 5;

-- Total Price of all Mobile is to be found with brand name--
select brands,sum(price) from mobile
group by brands;