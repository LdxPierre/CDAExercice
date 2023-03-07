DELIMITER |

DROP TRIGGER IF EXISTS pays_check|
CREATE TRIGGER pays_check
AFTER INSERT
ON `order details`
FOR EACH ROW
BEGIN
	DECLARE customer_id VARCHAR(15);
	DECLARE supplier_id VARCHAR(15);
	
	SET customer_id = (SELECT DISTINCT CustomerID FROM `orders` WHERE orders.OrderID = NEW.OrderID);
	SET supplier_id = (SELECT DISTINCT SupplierID FROM products JOIN `order details` ON `order details`.ProductID = products.ProductID WHERE products.ProductID = NEW.ProductID);
	
	IF (SELECT country FROM customers WHERE CustomerID = customer_id) <> (SELECT country FROM suppliers WHERE SupplierID = supplier_id) THEN
		SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Le client et le fournisseur ont un pays différent';
	END IF;
	
END|

DELIMITER ;