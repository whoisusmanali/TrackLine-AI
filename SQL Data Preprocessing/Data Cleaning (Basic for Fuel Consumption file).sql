USE TrackLine;

select * from [TrackLine].[dbo].[Fleet_Fuel_Consumption]

--Delete the useless columns
alter table [TrackLine].[dbo].[Fleet_Fuel_Consumption]
drop Column_1, Marque_Make, Couleur_Color, Couleur_PCIM_FIP_Color

--Check for null values

select * from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where Report_Month_Year is null

select distinct(Fuel_Quantity_In_Gallons) from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where [Fuel_Quantity_In_Gallons]='%self%'

select ISNULL([Fuel_Quantity_In_Gallons],'Self')
from [TrackLine].[dbo].[Fleet_Fuel_Consumption]

update [TrackLine].[dbo].[Fleet_Fuel_Consumption]
set Fuel_Quantity_In_Gallons=ISNULL(Fuel_Quantity_In_Gallons,'self')

select Fuel_Quantity_In_Gallons from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where Fuel_Quantity_In_Gallons is null


select * from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where Report_Month_Year is null

select * from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where Fuel_Type is null

select * from [TrackLine].[dbo].[Fleet_Fuel_Consumption]
where Fuel_Quantity_In_Gallons is null


create view PercentageofVaccination as 
select first.Report_Month_Year,first.Fuel_Quantity_In_Gallons
from [TrackLine].[dbo].[Fleet_Fuel_Consumption] as first
join [TrackLine].[dbo].[Fleet_Fuel_Consumption] as second
on first.Report_Month_Year=Report_Month_Year.date
and first.Fuel_Type=second.location
where first.Fuel_Type is not null