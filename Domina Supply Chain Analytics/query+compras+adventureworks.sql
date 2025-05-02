select
	t1.OrderDate as fecha_odc,
	t1.PurchaseOrderID as nro_odc,
	t2.ProductID as cod_prod,
	t1.VendorID as cod_prov,
	t2.OrderQty as cant_prod_odc,
	t2.UnitPrice as prec_unt,
	t2.OrderQty * t2.UnitPrice as monto_odc,
	t2.DueDate as fecha_entrega,
	t1.ShipDate as fecha_recibido,
	t2.ReceivedQty as cant_recibida,
	t2.UnitPrice * t2.ReceivedQty as monto_recibido,
	t1.Status as estado_odc

from Purchasing.PurchaseOrderHeader as t1
	join Purchasing.PurchaseOrderDetail as t2 on t1.PurchaseOrderID = t2.PurchaseOrderID