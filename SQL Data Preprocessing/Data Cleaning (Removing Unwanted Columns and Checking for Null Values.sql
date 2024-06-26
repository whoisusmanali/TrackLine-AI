USE TrackLine;

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
order by Registration asc;

--Delete the useless columns
alter table [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
drop Details

--Check for null values

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Number is null

select distinct(Registration) from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Registration='%self%'

select ISNULL(Registration,'Self')
from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]

update [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
set Registration=ISNULL(Registration,'self')

select Registration from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Registration is null

			--Tackle the Registration column

select Number from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Registration is not null

select Registration from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Registration = 'Self'

select ISNULL(Registration,'Self')
from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]

update [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
set Registration=ISNULL(Registration,'Self')

--Check other null values if any
select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Registration is null

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Product is null

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Odometer is null

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Distance is null

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where Unit is null

select * from [TrackLine].[dbo].[Copy of Fuel Usage 18-19]
where MPG is null
