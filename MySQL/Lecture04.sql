USE companydb;

SELECT SUM(SALARY)  AS REVENUE FROM EMPLOYEE;

#LEFT JOIN

SELECT * FROM EMPLOYEE;
SELECT * FROM WORKS_ON;

SELECT * FROM WORKS_ON 
INNER JOIN EMPLOYEE
ON WORKS_ON.ESSN = EMPLOYEE.SSN
WHERE WORKS_ON.HOURS=7.50;

SELECT * FROM WORKS_ON 
LEFT JOIN EMPLOYEE
ON WORKS_ON.ESSN = EMPLOYEE.SSN;

SELECT * FROM WORKS_ON 
CROSS JOIN EMPLOYEE;

