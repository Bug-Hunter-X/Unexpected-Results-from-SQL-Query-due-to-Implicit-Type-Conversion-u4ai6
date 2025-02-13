# SQL Query Bug: Implicit Type Conversion

This repository demonstrates a common SQL error involving implicit type conversion that can lead to unexpected query results.  The bug involves comparing numeric values with a non-numeric column, causing incorrect filtering.

The `bug.sql` file contains the problematic query. The `bugSolution.sql` file provides a corrected version of the query.

## Bug Description

The original query attempts to select employees from a specific department and with a salary exceeding a certain threshold. However, if the `department_id` column is of a non-numeric type, implicit type conversion occurs during the comparison, leading to potential inaccuracies.  This results in unexpected rows being included or excluded from the result set.

## Solution

To fix this, ensure that the `department_id` column has the correct data type (e.g., INT, BIGINT). If this is not feasible, use explicit type casting in the query to ensure that both sides of the comparison are numeric before the comparison is performed.