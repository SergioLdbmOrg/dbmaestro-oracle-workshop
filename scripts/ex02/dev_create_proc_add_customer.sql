-- EX02 - Ejecutar directamente en WSn_DEV; luego hacer Build del paquete desde DEV
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
