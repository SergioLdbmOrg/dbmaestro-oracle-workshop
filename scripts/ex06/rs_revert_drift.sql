-- Ejercicio 6 - Revertir el hotfix manual en WSn_RS: vuelve el procedure a la version de EX02
CREATE OR REPLACE PROCEDURE EX_ADD_CUSTOMER (
    p_id    IN NUMBER,
    p_first IN VARCHAR2,
    p_last  IN VARCHAR2,
    p_email IN VARCHAR2
) AS
BEGIN
    INSERT INTO EX_CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
    VALUES (p_id, p_first, p_last, p_email);
    COMMIT;
END EX_ADD_CUSTOMER;
/
