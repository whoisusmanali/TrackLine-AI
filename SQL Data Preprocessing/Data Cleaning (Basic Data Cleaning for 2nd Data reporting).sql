USE TrackLine;

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]

--Delete the useless columns
alter table [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
drop Column_1, Marque_Make, Couleur_Color, Couleur_PCIM_FIP_Color

--Check for null values

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where de_flotte_SPC_SSC_Fleet is null

select distinct(de_flotte_SPC_SSC_Fleet) from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where de_flotte_SPC_SSC_Fleet='%self%'

select ISNULL(de_flotte_SPC_SSC_Fleet,'Self')
from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]

update [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
set de_flotte_SPC_SSC_Fleet=ISNULL(de_flotte_SPC_SSC_Fleet,'self')

select de_flotte_SPC_SSC_Fleet from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where de_flotte_SPC_SSC_Fleet is null

			--Tackle the Registration column

select Marque_Make from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Marque_Make is not null

select Mod_le_Model from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Mod_le_Model = 'Self'

select ISNULL(Ann_e_Year,'Self')
from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]

update [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
set de_flotte_SPC_SSC_Fleet=ISNULL(de_flotte_SPC_SSC_Fleet,'Self')

--Check other null values if any
select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Mod_le_Model is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Marque_Make is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Ann_e_Year is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Co_t_Cost is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Taxes_sur_les_pneus_Tire_levy is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Taxes is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Prix_total_calcul_Total_purchase_price is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Lecture_actuelle_du_compteur_Current_Odometer_Reading is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Num_ro_du_mod_le_Model_number is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Litres_du_moteur_Litres_of_engine is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Ville_City is null

select * from [TrackLine].[dbo].[fleet_data_reporting_final_feb_2021]
where Province is null