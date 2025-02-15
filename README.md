# Ada Exception Handling in Range Check Function

This example demonstrates robust error handling in Ada using exception handling within a function that checks if a number is within a specified range. The function `Check_Range` checks if an integer is greater than 10.  If it is, the function returns `True`; otherwise, it returns `False`.  A crucial aspect of this code is the `exception` block. This block catches any unexpected exceptions that might occur during the range check (though unlikely in this simple case).  This prevents the program from crashing and allows for graceful handling of unexpected situations.

The `Main` procedure calls `Check_Range` and demonstrates how to use the returned Boolean value.  The solution offers a more comprehensive approach, showcasing how to handle potential exceptions in a real-world scenario where the input or underlying operations might be more complex. 