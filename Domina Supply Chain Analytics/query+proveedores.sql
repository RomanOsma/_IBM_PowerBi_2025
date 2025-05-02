select
	t1.BusinessEntityID as cod_prov,
	t1.Name as nom_prov,
	avg(t2.AverageLeadTime) as tmp_entrega,
	t6.Name as org_pais

from Purchasing.Vendor as t1
	join Purchasing.ProductVendor as t2 on t1.BusinessEntityID = t2.BusinessEntityID
	join Person.BusinessEntityAddress as t3 on t2.BusinessEntityID = t3.BusinessEntityID
	join Person.Address as t4 on t3.AddressID = t4.AddressID
	join Person.StateProvince as t5 on t4.StateProvinceID = t5.StateProvinceID
	join Person.CountryRegion as t6 on t5.CountryRegionCode = t6.CountryRegionCode

group by t1.BusinessEntityID, t1.Name,t6.Name
