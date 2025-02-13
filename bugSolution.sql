```sql
SELECT * FROM employees WHERE CAST(department_id AS UNSIGNED) = 123 AND salary > 100000;
```
This corrected query explicitly casts the `department_id` column to an unsigned integer before comparing it to the numeric value 123.  This avoids the implicit type conversion and ensures a correct numeric comparison.  The choice of UNSIGNED depends on the characteristics of the data; if it could be negative, then use a signed integer type such as INT or BIGINT instead.