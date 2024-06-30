USE TrackLine;

select * from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]

--Delete the useless columns
-- Nothing to delete

--Check for null values


select * from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where Hybrid_Non_Hybrid is null

-- joining the tables
select [TrackLine].[dbo].[Real-World_Fuel_Efficiency].continent,[TrackLine].[dbo].[Real-World_Fuel_Efficiency].location,[TrackLine].[dbo].[Real-World_Fuel_Efficiency].date,[TrackLine].[dbo].[Real-World_Fuel_Efficiency].population
from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
join [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
on [TrackLine].[dbo].[Real-World_Fuel_Efficiency].date=[TrackLine].[dbo].[Real-World_Fuel_Efficiency].date
and [TrackLine].[dbo].[Real-World_Fuel_Efficiency].location=[TrackLine].[dbo].[Real-World_Fuel_Efficiency].location
where [TrackLine].[dbo].[Real-World_Fuel_Efficiency].continent is not null
order by [TrackLine].[dbo].[Real-World_Fuel_Efficiency].new_vaccinations desc

select * from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where MAKE is null

select distinct(MAKE) from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where MAKE='%n/a%'

select ISNULL(MAKE,'n/a')
from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]

update [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
set MAKE=ISNULL(MAKE, 'n/a')

select MAKE from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where MAKE is null

--Check other null values if any
select * from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where [YEAR] is null

select * from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where MODEL is null

			--Tackle the Standard_TYPE column

select  STANDARD_TYPE from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where STANDARD_TYPE is not null

select STANDARD_TYPE from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
where STANDARD_TYPE = 'N?A'

select ISNULL(STANDARD_TYPE,'N?A')
from [TrackLine].[dbo].[Real-World_Fuel_Efficiency]

update [TrackLine].[dbo].[Real-World_Fuel_Efficiency]
set STANDARD_TYPE=ISNULL(STANDARD_TYPE,'N?A')


