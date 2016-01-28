---
title: Operator
page_title: Operator | UI for WinForms Documentation
description: Operator
slug: winforms/spreadprocessing/features/formulas/operator
tags: operator
published: True
position: 1
previous_url: spreadprocessing-features-formulas-operator
---

# Operator

This article lists and explains all supported operators.

## Supported Operators

The document model supports four groups of operators: arithmetic, comparison, text and reference.

| Arithmetic Operators |  |
| ------ | ------ |
|+ (Plus sign)|Addition (1+2)|
|- (Minus sign)|Subtraction (2-1) or negation (-1)|
|* (Asterisk)|Multiplication (2*2)|
|/ (Forward slash)|Division (5/2)|
|% (Percent sign)|Percent (10%)|
|^ (Caret)|Exponentiation (5^2)|


| Comparison Operators |  |
| ------ | ------ |
|=|Equal to (A1=3)|
|>|Greater than (A1>4)|
|<|Less than (A1<5)|
|>=|Greater than or equal to (A1>=6)|
|<=|Less than or equal to (A1<=7)|
|<>|Not equal to (A1<>8)|


| Concatenation Operator |  |
| ------ | ------ |
|& (Ampersand)|Concatenates text values ("Rad"&"Spreadsheet")|


| Reference Operator |  |
| ------ | ------ |
|: (Colon)|Produces a reference to a range of cells between two specified cells, including these two cells. (A1:C3)|
|, (Space)|Intersection operator. Returns a reference to the cells that two ranges have in common. (A1:C3 B2:C2)|

## Operator Precedence

If you combine multiple operators in a single formula, the expression is evaluated in order determined by the precedence of the operators. If two operators have equal precedence, they are evaluated from left to right. The following table contains all operators sorted by precedence in descending order:

|||
|----|----|
|: (Colon) , (Space)|Reference Operators|
|- (Minus)|Negation (-2)|
|^ (Caret)|Exponentiation|
|* (Asterisk) / (Forward slash)|Multiplication and division|
|+ (Plus sign) - (Minus sign)|Addition and subtraction|
|& (Ampersand)|Concatenates two strings|
|= (Equal) <br> > (Greater than) <br> < (Less than) <br> >= (Greater than or equal to) <br> <= (Less than or equal to) <br> <> (Not equal)|Comparison operators|

The order of operations within an expression can be changed through applying parenthesis.
