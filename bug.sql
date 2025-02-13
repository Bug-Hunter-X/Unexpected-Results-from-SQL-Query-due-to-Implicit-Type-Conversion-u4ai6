```sql
SELECT * FROM employees WHERE department_id = '123' AND salary > 100000;
```
This query might produce unexpected results if the `department_id` column is not of a numeric type, such as VARCHAR or TEXT.  A string comparison will be done instead of a numeric comparison, leading to incorrect filtering.  For example, if `department_id` is '123' but also has entries like '123a', '123A', or '0123', they might all be selected depending on the collating sequence.