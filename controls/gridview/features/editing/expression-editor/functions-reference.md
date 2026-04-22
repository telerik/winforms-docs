---
title: Functions Reference
page_title: Functions Reference - WinForms GridView Control
description: Complete reference of all built-in functions available in RadExpressionEditor for WinForms GridView, including parameters, types, and usage examples.
slug: winforms/gridview/expression-editor/functions-reference
tags: expression,editor,functions,reference
published: True
position: 4
---

# Functions Reference

`RadExpressionEditor` provides a set of built-in functions organized into the following categories: [Text](#text-functions), [Aggregate](#aggregate-functions), [Date-Time](#date-time-functions), [Logical](#logical-functions), [Math](#math-functions), and [Other (Conversion)](#conversion-functions). Each function is called by name in uppercase, followed by its arguments in parentheses.

> All functions are case-insensitive. `SUM()`, `Sum()`, and `sum()` are equivalent.

## Text Functions

Text functions perform string manipulation operations.

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `TOSTR` | `TOSTR(Object)` | string | Returns a string representation of an object. |
| `TRIM` | `TRIM(String)` | string | Removes whitespace from the beginning and end of a string. |
| `LEN` | `LEN(String)` | int | Returns the number of characters in a string. |
| `FORMAT` | `FORMAT(FormatString, Value)` | string | Replaces the format item in a string with the text equivalent of a value. Uses .NET composite format strings, for example `FORMAT('{0:C}', [Price])`. |
| `SUBSTR` | `SUBSTR(String, StartIndex, Length)` | string | Retrieves a substring starting at the specified zero-based character position with the specified length. |
| `INSERT` | `INSERT(String1, StartIndex, String2)` | string | Inserts `String2` into `String1` at the zero-based position specified by `StartIndex`. |
| `LOWER` | `LOWER(String)` | string | Returns the string converted to lowercase. |
| `UPPER` | `UPPER(String)` | string | Returns the string converted to uppercase. |
| `PADLEFT` | `PADLEFT(String, TotalLength)` | string | Right-aligns the characters in the string by padding its left side with spaces up to the specified total length. |
| `PADRIGHT` | `PADRIGHT(String, TotalLength)` | string | Left-aligns the characters in the string by padding its right side with spaces up to the specified total length. |
| `REMOVE` | `REMOVE(String, StartIndex, Count)` | string | Deletes the specified number of characters from the string, beginning at the specified zero-based position. |
| `REPLACE` | `REPLACE(String, OldValue, NewValue)` | string | Returns a copy of `String` in which all occurrences of `OldValue` are replaced with `NewValue`. |

**Examples:**

````
LOWER([ProductName])
SUBSTR([ProductName], 0, 3)
FORMAT('{0:N2}', [UnitPrice])
REPLACE([Description], 'old', 'new')
TRIM([CustomerName])
LEN([ProductName])
INSERT([Code], 0, 'PRD-')
````

## Aggregate Functions

Aggregate functions compute a single value from a column across all rows. Pass a column reference as the argument.

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `SUM` | `SUM([ColumnName])` | numeric | Computes the sum of values in the specified column. |
| `AVG` | `AVG([ColumnName])` | numeric | Computes the average of values in the specified column. |
| `MIN` | `MIN([ColumnName])` | varies | Returns the minimum value in the specified column. |
| `MAX` | `MAX([ColumnName])` | varies | Returns the maximum value in the specified column. |
| `COUNT` | `COUNT([ColumnName])` | int | Returns the number of values in the specified column. |
| `FIRST` | `FIRST([ColumnName])` | varies | Returns the first value in the specified column. |
| `LAST` | `LAST([ColumnName])` | varies | Returns the last value in the specified column. |

**Examples:**

````
SUM([UnitPrice])
AVG([Quantity])
COUNT([OrderID])
MAX([OrderDate])
MIN([UnitPrice])
````

## Date-Time Functions

Date-Time functions create, modify, and extract components from `DateTime` values.

### Getting the Current Date and Time

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `NOW` | `NOW()` | DateTime | Returns the current system date and time expressed as local time. |
| `TODAY` | `TODAY()` | DateTime | Returns the current date at midnight (time portion is 00:00:00). |
| `UTCNOW` | `UTCNOW()` | DateTime | Returns the current system date and time expressed as Coordinated Universal Time (UTC). |

### Adding Time Intervals

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `ADDDAYS` | `ADDDAYS(DateTime, DaysToAdd)` | DateTime | Returns a date-time value offset by the specified number of days. |
| `ADDHOURS` | `ADDHOURS(DateTime, HoursToAdd)` | DateTime | Returns a date-time value offset by the specified number of hours. |
| `ADDMINUTES` | `ADDMINUTES(DateTime, MinutesToAdd)` | DateTime | Returns a date-time value offset by the specified number of minutes. |
| `ADDSECONDS` | `ADDSECONDS(DateTime, SecondsToAdd)` | DateTime | Returns a date-time value offset by the specified number of seconds. |
| `ADDMILLISECONDS` | `ADDMILLISECONDS(DateTime, MillisecondsToAdd)` | DateTime | Returns a date-time value offset by the specified number of milliseconds. |
| `ADDTICKS` | `ADDTICKS(DateTime, TicksToAdd)` | DateTime | Returns a date-time value offset by the specified number of ticks. |
| `ADDMONTHS` | `ADDMONTHS(DateTime, MonthsToAdd)` | DateTime | Returns a date-time value offset by the specified number of months. |
| `ADDYEARS` | `ADDYEARS(DateTime, YearsToAdd)` | DateTime | Returns a date-time value offset by the specified number of years. |
| `ADDTIMESPAN` | `ADDTIMESPAN(DateTime, TimeSpan)` | DateTime | Returns a date-time value offset by the specified `TimeSpan`. |

### Calculating Date Differences

These functions return the difference between two dates in the specified unit.

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `DATEDIFFDAY` | `DATEDIFFDAY(StartDate, EndDate)` | double | Returns the number of day boundaries between two dates. |
| `DATEDIFFHOUR` | `DATEDIFFHOUR(StartDate, EndDate)` | double | Returns the number of hour boundaries between two dates. |
| `DATEDIFFMINUTE` | `DATEDIFFMINUTE(StartDate, EndDate)` | double | Returns the number of minute boundaries between two dates. |
| `DATEDIFFSECOND` | `DATEDIFFSECOND(StartDate, EndDate)` | double | Returns the number of second boundaries between two dates. |
| `DATEDIFFMILLISECOND` | `DATEDIFFMILLISECOND(StartDate, EndDate)` | double | Returns the number of millisecond boundaries between two dates. |
| `DATEDIFFTICK` | `DATEDIFFTICK(StartDate, EndDate)` | long | Returns the number of tick boundaries between two dates. |

### Extracting Date-Time Components

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `GETDATE` | `GETDATE(DateTime)` | DateTime | Extracts the date portion (time set to midnight). |
| `GETDAY` | `GETDAY(DateTime)` | int | Extracts the day of the month (1-31). |
| `GETDAYOFWEEK` | `GETDAYOFWEEK(DateTime)` | DayOfWeek | Extracts the day of the week. |
| `GETDAYOFYEAR` | `GETDAYOFYEAR(DateTime)` | int | Extracts the day of the year (1-366). |
| `GETHOUR` | `GETHOUR(DateTime)` | int | Extracts the hour component (0-23). |
| `GETMINUTE` | `GETMINUTE(DateTime)` | int | Extracts the minute component (0-59). |
| `GETSECOND` | `GETSECOND(DateTime)` | int | Extracts the second component (0-59). |
| `GETMILLISECOND` | `GETMILLISECOND(DateTime)` | int | Extracts the millisecond component (0-999). |
| `GETMONTH` | `GETMONTH(DateTime)` | int | Extracts the month component (1-12). |
| `GETYEAR` | `GETYEAR(DateTime)` | int | Extracts the year component. |
| `GETTIMEOFDAY` | `GETTIMEOFDAY(DateTime)` | long | Extracts the time of day expressed in ticks. |

**Examples:**

````
ADDDAYS([OrderDate], 30)
DATEDIFFDAY([OrderDate], NOW())
GETYEAR([OrderDate])
GETMONTH([ShippedDate])
ADDMONTHS(TODAY(), -6)
````

## Logical Functions

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `IIF` | `IIF(BooleanExpression, TruePart, FalsePart)` | object | Evaluates `BooleanExpression` and returns `TruePart` if true, or `FalsePart` if false. |
| `ISNULL` | `ISNULL(Value, ReplacementValue)` | object | Returns `Value` if it is not null. Otherwise, returns `ReplacementValue`. |

**Examples:**

````
IIF([UnitPrice] > 100, 'Expensive', 'Affordable')
ISNULL([ShippedDate], #01/01/2000#)
IIF([Quantity] > 0 AND [UnitPrice] > 0, [Quantity] * [UnitPrice], 0)
````

## Math Functions

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `ABS` | `ABS(Value)` | numeric | Returns the absolute value of a number. |
| `CEILING` | `CEILING(Value)` | numeric | Returns the smallest integer greater than or equal to the specified number. |
| `FLOOR` | `FLOOR(Value)` | numeric | Returns the largest integer less than or equal to the specified number. |
| `ROUND` | `ROUND(Value)` | decimal | Rounds the value to the nearest integer. |
| `SIGN` | `SIGN(Value)` | int | Returns +1, 0, or -1 indicating the sign of the number. |
| `SQRT` | `SQRT(Value)` | double | Returns the square root of a number. |
| `POWER` | `POWER(Base, Exponent)` | double | Returns a number raised to the specified power. |
| `EXP` | `EXP(Value)` | double | Returns e raised to the specified power. |
| `LOG` | `LOG(Value)` | double | Returns the natural (base e) logarithm of a number. |
| `LOG10` | `LOG10(Value)` | double | Returns the base-10 logarithm of a number. |
| `BIGMUL` | `BIGMUL(Value1, Value2)` | long | Returns a 64-bit integer containing the full product of two 32-bit integers. |
| `RND` | `RND()` | double | Returns a random number greater than or equal to 0.0 and less than 1.0. |
| `SIN` | `SIN(Radians)` | double | Returns the sine of the specified angle in radians. |
| `COS` | `COS(Radians)` | double | Returns the cosine of the specified angle in radians. |
| `TAN` | `TAN(Radians)` | double | Returns the tangent of the specified angle in radians. |
| `ASIN` | `ASIN(Value)` | double | Returns the angle in radians whose sine is the specified value. |
| `ACOS` | `ACOS(Value)` | double | Returns the angle in radians whose cosine is the specified value. |
| `ATAN` | `ATAN(Value)` | double | Returns the angle in radians whose tangent is the specified value. |
| `SINH` | `SINH(Radians)` | double | Returns the hyperbolic sine of the specified angle in radians. |
| `COSH` | `COSH(Radians)` | double | Returns the hyperbolic cosine of the specified angle in radians. |
| `TANH` | `TANH(Radians)` | double | Returns the hyperbolic tangent of the specified angle in radians. |

**Examples:**

````
ABS([Quantity] - [Expected])
ROUND([UnitPrice] * 1.1)
POWER([Value], 2)
SQRT([Area])
CEILING([Total] / 10)
````

## Conversion Functions

Conversion functions convert an expression to a specific .NET data type.

| Function | Syntax | Return Type | Description |
|----------|--------|-------------|-------------|
| `CINT` | `CINT(Expression)` | System.Int32 | Converts the expression to a 32-bit integer. |
| `CDBL` | `CDBL(Expression)` | System.Double | Converts the expression to a double-precision floating-point number. |
| `CBOOL` | `CBOOL(Expression)` | System.Boolean | Converts the expression to a Boolean value. |
| `CDATE` | `CDATE(Expression)` | System.DateTime | Converts the expression to a DateTime value. |
| `CSTR` | `CSTR(Expression)` | System.String | Converts the expression to a string value. |

**Examples:**

````
CINT([Quantity])
CDBL([UnitPrice]) * 1.5
CDATE('2025-01-15')
CSTR([ProductID])
IIF(CBOOL([IsActive]), 'Active', 'Inactive')
````

## See Also

* [Expression Syntax and Operators]({%slug winforms/gridview/expression-editor/expression-syntax%})
* [Overview]({%slug winforms/gridview/expression-editor%})
* [Customizing RadExpressionEditor]({%slug winforms/gridview/expression-editor/customizing-radexpressioneditor%})
