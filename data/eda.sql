USE Local;
GO

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StarbucksDirectory'


SELECT
	 Store_Number
	,Store_Name
	,Street_Address
	,City
	,State_Province
	,Country
	,Longitude
	,Latitude
	,-82.490 - Longitude
FROM dbo.StarbucksDirectory
WHERE Brand = 'Starbucks'
  --and Longitude < 1 and Longitude > -1
 --and Longitude > -83 and Longitude < -82
ORDER BY Longitude




SELECT DISTINCT Brand from dbo.StarbucksDirectory

SELECT
	  Brand
	, COUNT(*)
FROM dbo.StarbucksDirectory
GROUP BY Brand

SELECT
	  Brand
	, Store_Number
	, Store_Name
	, Ownership_Type
	, Street_Address
	, City
	, State_Province
	, Country
	, Postcode
	, Longitude 
	, Latitude
FROM dbo.StarbucksDirectory
WHERE Brand = 'Starbucks'
  and Store_Number in ('13213-100434','76362-97182','25282-240406','25278-240393')
ORDER BY Longitude



SELECT *
FROM dbo.StarbucksDirectory
WHERE Store_Number in ('78021-105039', '17900-175567')


-- ('332-94100','3319-20879')
					--('47370-257954', '21998-216824')
					--('22331-212325', '47089-256771')
					--('32195-235805', '14951-156525')
				    --('15104-157584', '24525-232904')
--GROUP BY Longitude,Latitude