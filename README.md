# Ada Integer Overflow and Constraint_Error

This example demonstrates a common error in Ada programming related to integer overflow.  Ada's Integer type has a fixed range.  When an operation results in a value outside this range, it raises a `Constraint_Error` exception.

The `Check_Range` function appears to handle range checking, but it fails when presented with a value beyond the maximum representable Integer. The provided `Example` procedure shows how to handle the exception with an exception handler.  Failure to handle it may lead to unexpected program termination.

This is a subtle but critical issue that must be considered when working with numeric types in Ada, especially when input values are not strictly controlled.