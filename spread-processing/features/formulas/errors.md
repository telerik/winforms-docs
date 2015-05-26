---
title: Errors
page_title: Errors | UI for WinForms Documentation
description: Errors
slug: winforms/spread-processing/features/formulas/errors
tags: errors
published: True
position: 3
---

# Errors



In some cases formula values may return errors. For example, it might have happened that you entered an invalid algebraic expression, or maybe you are
        referencing a cell that does not exist. The specific error value which is returned can hint the cause of the issue and, therefore, facilitate the process of finding a solution.
      

## 

The following table contains information about all supported errors.
        



|#DIV/0!| __Divide by Zero Error__ occurs when the formula contains an expression that results in division by zero. For example, such
                error is produced when the following expression is calculated: *=5/0* .|
|#VALUE!| __Error in Value__ occurs when an argument is not of the correct type. For example, passing the ABS function (ABS function
                returns the absolute value of a number) a text value as an argument (which is not a text number representation, such as "5") produces the
                #VALUE! error: *=ABS("string")* .|
|#REF!| __Reference Error__ implies that the referenced cell does not exist (e.g. *ABCDE1* ) or has been
                deleted.|
|#NAME?| __Invalid Name Error__ indicates that the cell value contains a name of an unknown function or variable. For example, attempt
                to use a function that is not in the built-in functions list will produce the #NAME? error: *=ABCDEF()* . Another case
                that will produce the error is use of undefined name.|
|#NUM!| __Number Error__ indicates that the number does not meet function requirements. For example, passing the LN function (LN
                function returns the natural logarithm of a number) a negative number as argument produces #NUM! error: *=LN(-10)* .|
|#N/A| __Value Not Available Error__ occurs when a function cannot produce a valid output. For example, passing the MODE function
                (MODE function returns the most frequently occurring or repetitive value in an array or range of data) the arguments 1, 2, 3 will cause the #N/A
                error because each of the numbers appears exactly once and, therefore, the set of numbers does not have a mode: *=MODE(1,2,3)* .|
|#NULL| __Null Error__ occurs when the two cell ranges passed to an intersection operator do not intersect. For example, the value
                =A1:A2 B1:B2 returns null error since the two ranges to not have cells in common.|
