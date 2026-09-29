-- Ejercicio 6 - Cambio "oficial" en WSn_DEV; luego hacer Build del paquete EX03 desde DEV
-- Agrega una validacion: el email es obligatorio y se guarda en minusculas.
CREATE OR REPLACE PROCEDURE EX_ADD_CUSTOMER (
    p_id    IN NUMBER,
    p_first IN VARCHAR2,
    p_last  IN VARCHAR2,
    p_email IN VARCHAR2
) AS
BEGIN
    IF p_email IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'EMAIL es obligatorio');
    END IF;

    INSERT INTO EX_CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
    VALUES (p_id, p_first, p_last, LOWER(p_email));
    COMMIT;
END EX_ADD_CUSTOMER;
/
