USE TrackLine;

select * from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]

--Delete the useless columns
alter table [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
drop Organization, Category, Project_Name

--Check for null values

select * from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Fiscal_year is null

select distinct(Fiscal_year) from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Fiscal_year='%n/a%'

select ISNULL(Fiscal_year,'n/a')
from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]

update [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
set Fiscal_year=ISNULL(Fiscal_year, 'n/a')

select Fiscal_year from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Fiscal_year is null

--Check other null values if any
select * from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Amount_Awarded_by_Program is null

select * from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Area is null

			--Tackle the Registration column

select  Funding_Round from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Funding_Round is not null

select Funding_Round from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
where Funding_Round = 'FL'

select ISNULL(Funding_Round,'FL')
from [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]

update [TrackLine].[dbo].[Low_Carbon_Communities_Grant_Recipients]
set Funding_Round=ISNULL(Funding_Round,'Self')

