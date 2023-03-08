DELIMITER |

DROP TRIGGER IF EXISTS articles_a_commander|
CREATE TRIGGER articles_a_commander
AFTER UPDATE
ON produit
FOR EACH ROW
BEGIN
    IF (NEW.stkphy < OLD.stkale) THEN
        IF NEW.CODART IN (SELECT CODART FROM ARTICLES_A_COMMANDER) THEN
            UPDATE articles_a_commander SET `QTE`=OLD.stkale-NEW.stkphy WHERE `CODART`=NEW.CODART;
        ELSE
            INSERT INTO articles_a_commander (`CODART`, `QTE`) VALUES (OLD.CODART, OLD.stkale-NEW.stkphy);
        END IF;
    END IF;
END|

DELIMITER ;