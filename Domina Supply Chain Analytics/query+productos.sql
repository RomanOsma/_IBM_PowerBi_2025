select
	t1.ProductID as cod_prod,
	t1.Name as descrip_prod,
	t3.Name as Categoria,
	t2.Name as Subcategoria,
	und_prod = 0,
	cant_prod= 0,
	t1.StandardCost as costo_prod
from Production.Product as t1
	join Production.ProductSubcategory as t2 on t1.ProductSubcategoryID = t2.ProductSubcategoryID
	join Production.ProductCategory as t3 on t2.ProductCategoryID = t3.ProductCategoryID