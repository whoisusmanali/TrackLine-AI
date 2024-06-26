USE TrackLine;

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]

--Delete the useless columns
alter table [TrackLine].[dbo].[Fuel April 22 to March 23]
drop Details

--Check for null values

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Fleet_Number is null

select distinct(Fleet_Number) from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Fleet_Number='%n/a%'

select ISNULL(Fleet_Number,'n/a')
from [TrackLine].[dbo].[Fuel April 22 to March 23]

update [TrackLine].[dbo].[Fuel April 22 to March 23]
set Fleet_Number=ISNULL(Fleet_Number, 'n/a')

select Fleet_Number from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Fleet_Number is null

			--Tackle the Registration column

select  Registration from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Registration is not null

select Registration from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Registration = 'FL'

select ISNULL(Registration,'FL')
from [TrackLine].[dbo].[Fuel April 22 to March 23]

update [TrackLine].[dbo].[Fuel April 22 to March 23]
set Fleet_Number=ISNULL(Fleet_Number,'Self')

--Check other null values if any
select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Product is null

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Distance is null

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Unit is null

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where Litres is null

select * from [TrackLine].[dbo].[Fuel April 22 to March 23]
where MPG is null