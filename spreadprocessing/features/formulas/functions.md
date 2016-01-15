---
title: Functions
page_title: Functions | UI for WinForms Documentation
description: Functions
slug: winforms/spreadprocessing/features/formulas/functions
tags: functions
published: True
position: 3
---

# Functions

The document model provides a number of built-in functions that you can use in formula values.

The model offers functions in the following categories: Date and Time, Financial, Information, Logical, Lookup and Reference, Math and Trigonometry, Statistical, and Text. To use a predefined function in a formula, enter its name followed by opening bracket. Further, if the function has parameters, list the arguments separated by the current culture list separator. Finally, add the closing bracket.

For example, the formula *=SUM(1, A2)* adds one to the value of cell A2. Note that if the function does not have parameters, you still have to place the opening and closing brackets after its name, e.g. *=PI()*. Functions can be used as standalone values, operands and arguments of other functions.

## Supported Functions

The document model supports the following functions:

| Date and Time Functions |  |
| ------ | ------ |
|DATE|Returns the serial number of a particular date|
|DATEVALUE|Converts a date in the form of text to a serial number|
|DAY|Converts a serial number to a day of the month|
|HOUR|Converts a serial number to an hour|
|MINUTE|Converts a serial number to a minute|
|MONTH|Converts a serial number to a month|
|SECOND|Converts a serial number to a second|
|TIME|Returns the serial number of a particular time|
|TIMEVALUE|Converts a time in the form of text to a serial number|
|TODAY|Returns the serial number of today's date|
|YEAR|Converts a serial number to a year|

| Engineering Functions |  |
| ------ | ------ |
|BESSELI|Returns the modified Bessel function In(x)|
|BESSELJ|Returns the Bessel function Jn(x)|
|BESSELK|Returns the modified Bessel function Kn(x)|
|BESSELY|Returns the Bessel function Yn(x)|
|BIN2DEC|Converts a binary number to decimal|
|BIN2HEX|Converts a binary number to hexadecimal|
|BIN2OCT|Converts a binary number to octal|
|BITAND|Returns a 'Bitwise And' of two numbers|
|BITLSHIFT|Returns a value number shifted left by shift_amount bits|
|BITOR|Returns a bitwise OR of 2 numbers|
|BITRSHIFT|Returns a value number shifted right by shift_amount bits|
|BITXOR|Returns a bitwise 'Exclusive Or' of two numbers|
|COMPLEX|Converts real and imaginary coefficients into a complex number|
|CONVERT|Converts a number from one measurement system to another|
|DEC2BIN|Converts a decimal number to binary|
|DEC2HEX|Converts a decimal number to hexadecimal|
|DEC2OCT|Converts a decimal number to octal|
|DELTA|Tests whether two values are equal|
|ERF|Returns the error function|
|ERF.PRECISE|Returns the error function|
|ERFC|Returns the complementary error function|
|ERFC.PRECISE|Returns the complementary ERF function integrated between x and infinity|
|GESTEP|Tests whether a number is greater than a threshold value|
|HEX2BIN|Converts a hexadecimal number to binary|
|HEX2DEC|Converts a hexadecimal number to decimal|
|HEX2OCT|Converts a hexadecimal number to octal|
|IMABS|Returns the absolute value (modulus) of a complex number|
|IMAGINARY|Returns the imaginary coefficient of a complex number|
|IMARGUMENT|Returns the argument theta, an angle expressed in radians|
|IMCONJUGATE|Returns the complex conjugate of a complex number|
|IMCOS|Returns the cosine of a complex number|
|IMCOSH|Returns the hyperbolic cosine of a complex number|
|IMCOT|Returns the cotangent of a complex number|
|IMCSC|Returns the cosecant of a complex number|
|IMCSCH|Returns the hyperbolic cosecant of a complex number|
|IMDIV|Returns the quotient of two complex numbers|
|IMEXP|Returns the exponential of a complex number|
|IMLN|Returns the natural logarithm of a complex number|
|IMLOG10|Returns the base-10 logarithm of a complex number|
|IMLOG2|Returns the base-2 logarithm of a complex number|
|IMPOWER|Returns a complex number raised to an integer power|
|IMPRODUCT|Returns the product of from 2 to 255 complex numbers|
|IMREAL|Returns the real coefficient of a complex number|
|IMSEC|Returns the secant of a complex number|
|IMSECH|Returns the hyperbolic secant of a complex number|
|IMSIN|Returns the sine of a complex number|
|IMSINH|Returns the hyperbolic sine of a complex number|
|IMSQRT|Returns the square root of a complex number|
|IMSUB|Returns the difference between two complex numbers|
|IMSUM|Returns the sum of complex numbers|
|IMTAN|Returns the tangent of a complex number|
|OCT2BIN|Converts an octal number to binary|
|OCT2DEC|Converts an octal number to decimal|
|OCT2HEX|Converts an octal number to hexadecimal|

| Financial Functions |  |
| ------ | ------ |
|ACCRINTM|Returns the accrued interest for a security that pays interest at maturity|
|AMORDEGRC|Returns the depreciation for each accounting period by using a depreciation coefficient|
|AMORLINC|Returns the depreciation for each accounting period|
|COUPDAYBS|Returns the number of days from the beginning of the coupon period to the settlement date|
|COUPDAYS|Returns the number of days in the coupon period that contains the settlement date|
|COUPDAYSNC|Returns the number of days from the settlement date to the next coupon date|
|COUPNCD|Returns the next coupon date after the settlement date|
|COUPNUM|Returns the number of coupons payable between the settlement date and maturity date|
|COUPPCD|Returns the previous coupon date before the settlement date|
|CUMIPMT|Returns the cumulative interest paid between two periods|
|CUMPRINC|Returns the cumulative principal paid on a loan between two periods|
|DB|Returns the depreciation of an asset for a specified period by using the fixed-declining balance method|
|DISC|Returns the discount rate for a security|
|DOLLARDE|Converts a dollar price, expressed as a fraction, into a dollar price, expressed as a decimal number|
|DOLLARFR|Converts a dollar price, expressed as a decimal number, into a dollar price, expressed as a fraction|
|DURATION|Returns the annual duration of a security with periodic interest payments|
|EFFECT|Returns the effective annual interest rate|
|FV|Returns the future value of an investment|
|INTRATE|Returns the interest rate for a fully invested security|
|IPMT|Returns the interest payment for an investment for a given period|
|ISPMT|Calculates the interest paid during a specific period of an investment|
|MDURATION|Returns the Macauley modified duration for a security with an assumed par value of $100|
|NOMINAL|Returns the annual nominal interest rate|
|NPER|Returns the number of periods for an investment|
|NPV|Returns the net present value of an investment based on a series of periodic cash flows and a discount rate|
|ODDFPRICE|Returns the price per $100 face value of a security with an odd first period|
|ODDFYIELD|Returns the yield of a security with an odd first period|
|ODDLPRICE|Returns the price per $100 face value of a security with an odd last period|
|ODDLYIELD|Returns the yield of a security with an odd last period|
|PDURATION|Returns the number of periods required by an investment to reach a specified value|
|PMT|Returns the periodic payment for an annuity|
|PPMT|Returns the payment on the principal for an investment for a given period|
|PRICE|Returns the price per $100 face value of a security that pays periodic interest|
|PRICEDISC|Returns the price per $100 face value of a discounted security|
|PV|Returns the present value of an investment|
|RATE|Returns the interest rate per period of an annuity|
|RECEIVED|Returns the amount received at maturity for a fully invested security|
|RRI|Returns an equivalent interest rate for the growth of an investment|
|SLN|Returns the straight-line depreciation of an asset for one period|
|SYD|Returns the sum-of-years' digits depreciation of an asset for a specified period|
|TBILLEQ|Returns the bond-equivalent yield for a Treasury bill|
|TBILLPRICE|Returns the price per $100 face value for a Treasury bill|
|TBILLYIELD|Returns the yield for a Treasury bill|
|VDB|Returns the depreciation of an asset for a specified or partial period by using a declining balance method|
|YIELD|Returns the yield on a security that pays periodic interest|
|YIELDDISC|Returns the annual yield for a discounted security; for example, a Treasury bill|
|YIELDMAT|Returns the annual yield of a security that pays interest at maturity|


| Information Functions |  |
| ------ | ------ |
|ERROR.TYPE|Returns a number corresponding to an error type|
|ISBLANK|Returns TRUE if the value is blank|
|ISERR|Returns TRUE if the value is any error value except #N/A|
|ISERROR|Returns TRUE if the value is any error value|
|ISEVEN|Returns TRUE if the number is even|
|ISFORMULA|Returns TRUE if there is a reference to a cell that contains a formula|
|ISLOGICAL|Returns TRUE if the value is a logical value|
|ISNA|Returns TRUE if the value is the #N/A error value|
|ISNONTEXT|Returns TRUE if the value is not text|
|ISNUMBER|Returns TRUE if the value is a number|
|ISODD|Returns TRUE if the number is odd|
|ISREF|Returns TRUE if the value is a reference|
|ISTEXT|Returns TRUE if the value is text|
|N|Returns a value converted to a number|
|NA|Returns the error value #N/A|
|TYPE|Returns a number indicating the data type of a value|


| Logical Functions |  |
| ------ | ------ |
|AND|Returns TRUE if all of its arguments are TRUE|
|FALSE|Returns the logical value FALSE|
|IF|Specifies a logical test to perform|
|NOT|Reverses the logic of its argument|
|OR|Returns TRUE if any argument is TRUE|
|TRUE|Returns the logical value TRUE|
|XOR|Returns a logical exclusive OR of all arguments|


| Lookup and Reference Functions |  |
| ------ | ------ |
|HYPERLINK|Creates a shortcut or jump that opens a document stored on a network server, an intranet, or the Internet|
|INDEX|Uses an index to choose a value from a reference or array|
|LOOKUP|Looks up values in a vector or array|


| Math and Trigonometry Functions |  |
| ------ | ------ |
|ABS|Returns the absolute value of a number|
|ACOS|Returns the arccosine of a number|
|ACOSH|Returns the inverse hyperbolic cosine of a number|
|ACOT|Returns the arccotangent of a number|
|ACOTH|Returns the hyperbolic arccotangent of a number|
|ASIN|Returns the arcsine of a number|
|ASINH|Returns the inverse hyperbolic sine of a number|
|ATAN|Returns the arctangent of a number|
|ATAN2|Returns the arctangent from x- and y-coordinates|
|ATANH|Returns the inverse hyperbolic tangent of a number|
|CEILING|Rounds a number to the nearest integer or to the nearest multiple of significance|
|CEILING.MATH|Rounds a number up, to the nearest integer or to the nearest multiple of significance|
|CEILING.PRECISE|Rounds a number the nearest integer or to the nearest multiple of significance. Regardless of the sign of the number, the number is rounded up.|
|COMBIN|Returns the number of combinations for a given number of objects|
|COS|Returns the cosine of a number|
|COSH|Returns the hyperbolic cosine of a number|
|COT|Returns the cotangent of an angle|
|COTH|Returns the hyperbolic cotangent of a number|
|CSC|Returns the cosecant of an angle|
|CSCH|Returns the hyperbolic cosecant of an angle|
|DEGREES|Converts radians to degrees|
|EVEN|Rounds a number up to the nearest even integer|
|EXP|Returns e raised to the power of a given number|
|FACT|Returns the factorial of a number|
|FACTDOUBLE|Returns the double factorial of a number|
|FLOOR|Rounds a number down, toward zero|
|FLOOR.MATH|Rounds a number down, to the nearest integer or to the nearest multiple of significance|
|FLOOR.PRECISE|Rounds a number down to the nearest integer or to the nearest multiple of significance. Regardless of the sign of the number, the number is rounded down.|
|GCD|Returns the greatest common divisor|
|INT|Rounds a number down to the nearest integer|
|ISO.CEILING|Returns a number that is rounded up to the nearest integer or to the nearest multiple of significance|
|LCM|Returns the least common multiple|
|LN|Returns the natural logarithm of a number|
|LOG|Returns the logarithm of a number to a specified base|
|LOG10|Returns the base-10 logarithm of a number|
|MOD|Returns the remainder from division|
|MROUND|Returns a number rounded to the desired multiple|
|MULTINOMIAL|Returns the multinomial of a set of numbers|
|ODD|Rounds a number up to the nearest odd integer|
|PI|Returns the value of pi|
|POWER|Returns the result of a number raised to a power|
|PRODUCT|Multiplies its arguments|
|QUOTIENT|Returns the integer portion of a division|
|RADIANS|Converts degrees to radians|
|ROUND|Rounds a number to a specified number of digits|
|ROUNDDOWN|Rounds a number down, toward zero|
|ROUNDUP|Rounds a number up, away from zero|
|SEC|Returns the secant of an angle|
|SECH|Returns the hyperbolic secant of an angle|
|SIGN|Returns the sign of a number|
|SIN|Returns the sine of the given angle|
|SINH|Returns the hyperbolic sine of a number|
|SQRT|Returns a positive square root|
|SQRTPI|Returns the square root of (number * pi)|
|SUM|Adds its arguments|
|SUMIF|Adds the cells specified by a given criteria|
|SUMSQ|Returns the sum of the squares of the arguments|
|TAN|Returns the tangent of a number|
|TANH|Returns the hyperbolic tangent of a number|
|TRUNC|Truncates a number to an integer|


| Statistical Functions |  |
| ------ | ------ |
|AVERAGE|Returns the average of its arguments|
|AVERAGEA|Returns the average of its arguments, including numbers, text, and logical values|
|COUNTIF|Counts the number of cells within a range that meet the given criteria|
|MAX|Returns the maximum value in a list of arguments|
|MAXA|Returns the maximum value in a list of arguments, including numbers, text, and logical values|
|MEDIAN|Returns the median of the given numbers|
|MIN|Returns the minimum value in a list of arguments|
|MINA|Returns the smallest value in a list of arguments, including numbers, text, and logical values|
|MODE|Returns the most common value in a data set|
|STDEV|Estimates standard deviation based on a sample|
|STDEVA|Estimates standard deviation based on a sample, including numbers, text, and logical values|
|STDEVP|Calculates standard deviation based on the entire population|
|STDEVPA|Calculates standard deviation based on the entire population, including numbers, text, and logical values|


| Text Functions |  |
| ------ | ------ |
|CHAR|Returns the character specified by the code number|
|CODE|Returns a numeric code for the first character in a text string|
|CONCATENATE|Joins several text items into one text item|
|EXACT|Checks to see if two text values are identical|
|FIND|Finds one text value within another (case-sensitive)|
|LEFT|Returns the leftmost characters from a text value|
|LEN|Returns the number of characters in a text string|
|LOWER|Converts text to lowercase|
|REPT|Repeats text a given number of times|
|RIGHT|Returns the rightmost characters from a text value|
|SEARCH|Finds one text value within another (not case-sensitive)|
|UPPER|Converts text to uppercase|
