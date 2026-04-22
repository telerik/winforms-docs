---
title: Expression Syntax and Operators
page_title: Expression Syntax and Operators - WinForms GridView Control
description: Learn the expression syntax rules, operators, constants, and formatting conventions used in RadExpressionEditor for WinForms GridView.
slug: winforms/gridview/expression-editor/expression-syntax
tags: expression,editor,syntax,operators
published: True
position: 5
---

# Expression Syntax and Operators

This article describes the syntax rules for building expressions in `RadExpressionEditor`. It covers literal values, field references, operators, constants, and operator precedence.

## Literal Values

Expressions support three types of literal values. Each type uses a specific delimiter.

| Type | Delimiter | Example |
|------|-----------|---------|
| String | Single quotes | `'Hello World'` |
| Date | Pound signs (`#`) | `#01/15/2025#` |
| Number | None (direct value) | `42`, `3.14`, `1.5E3` |

Numeric values support decimal notation and scientific notation (for example, `1.5E3` equals 1500).

## Field References

Reference grid column values by enclosing the column name in square brackets.

````
[ProductName]
[UnitPrice]
[OrderDate]
````

If a column name contains special characters (spaces, operators, brackets, or other reserved characters), the square bracket syntax handles escaping automatically.

````
[Unit Price]
[Order#]
````

## Arithmetic Operators

| Operator | Name | Example | Description |
|----------|------|---------|-------------|
| `+` | Plus | `[Price] + [Tax]` | Adds two numeric values or concatenates two strings. |
| `-` | Minus | `[Total] - [Discount]` | Subtracts the second value from the first. |
| `*` | Multiply | `[Quantity] * [UnitPrice]` | Multiplies two numeric values. |
| `/` | Divide | `[Total] / [Count]` | Divides the first value by the second. |
| `%` | Modulo | `[Value] % 2` | Returns the remainder after division. |

## Comparison Operators

| Operator | Name | Example |
|----------|------|---------|
| `=` | Equal | `[Status] = 'Active'` |
| `<>` | Not equal | `[Category] <> 'None'` |
| `<` | Less than | `[Quantity] < 10` |
| `>` | Greater than | `[UnitPrice] > 50` |
| `<=` | Less than or equal | `[Age] <= 65` |
| `>=` | Greater than or equal | `[Rating] >= 4` |

## Logical Operators

| Operator | Example | Description |
|----------|---------|-------------|
| `AND` | `[Price] > 10 AND [Price] < 100` | Returns true when both conditions are true. |
| `OR` | `[Status] = 'New' OR [Status] = 'Pending'` | Returns true when at least one condition is true. |
| `NOT` | `NOT([IsDeleted])` | Negates a Boolean expression. |

## Special Operators

| Operator | Syntax | Example | Description |
|----------|--------|---------|-------------|
| `IN` | `Value IN (List)` | `[Country] IN ('US', 'UK', 'CA')` | Returns true if the value matches any item in the list. |
| `LIKE` | `Value LIKE Pattern` | `[Name] LIKE 'A%'` | Returns true if the value matches the specified pattern. Use `%` or `*` as a wildcard for any sequence of characters. A maximum of two wildcards per pattern is allowed. |
| `BETWEEN` | `Value BETWEEN Start AND End` | `[Price] BETWEEN 10 AND 100` | Returns true if the value falls within the specified range, inclusive. |

## Constants

| Constant | Description |
|----------|-------------|
| `TRUE` | Boolean true value. |
| `FALSE` | Boolean false value. |
| `NULL` | Represents a null (missing) value. |

## Operator Precedence

Operators are evaluated in the following order from highest to lowest precedence. Use parentheses to override the default order.

| Priority | Operators |
|----------|-----------|
| 1 (Highest) | Unary `+`, Unary `-` |
| 2 | `*`, `/` |
| 3 | `%` (Modulo) |
| 4 | `+`, `-` |
| 5 | `=`, `<>`, `<`, `>`, `<=`, `>=` |
| 6 | `IN`, `LIKE`, `BETWEEN` |
| 7 | `NOT` |
| 8 | `AND` |
| 9 (Lowest) | `OR` |

## Building Complex Expressions

Combine functions, operators, and field references to create complex expressions. Use parentheses to group sub-expressions and control evaluation order.

````
IIF([UnitPrice] * [Quantity] > 1000, 'High Value', 'Standard')
````

````
IIF(ISNULL([ShippedDate], TODAY()) > [RequiredDate], 'Late', 'On Time')
````

````
UPPER(SUBSTR([ProductName], 0, 3)) + '-' + CSTR([ProductID])
````

````
[UnitPrice] * [Quantity] * IIF([Discount] > 0, 1 - [Discount], 1)
````

## See Also

* [Functions Reference]({%slug winforms/gridview/expression-editor/functions-reference%})
* [Overview]({%slug winforms/gridview/expression-editor%})
* [Customizing RadExpressionEditor]({%slug winforms/gridview/expression-editor/customizing-radexpressioneditor%})
