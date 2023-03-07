DELIMITER |

DROP PROCEDURE IF EXISTS derniere_commande|
CREATE PROCEDURE derniere_commande(nom VARCHAR(40))
BEGIN
SELECT OrderDate AS 'Date de dernière commande'
FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE CompanyName = nom
ORDER BY OrderDate DESC
LIMIT 1;
END|

DROP PROCEDURE IF EXISTS delai|
CREATE PROCEDURE delai(nom VARCHAR(40))
BEGIN
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours'
FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE CompanyName = nom;
END|

DELIMITER ;