-- Ejercicio 5 - Verificar en WSn_QA que el procedure fue removido por el rollback
SELECT OBJECT_NAME, OBJECT_TYPE, STATUS
FROM   USER_OBJECTS
WHERE  OBJECT_NAME = 'EX_ADD_CUSTOMER';
-- Resultado esperado: sin filas
