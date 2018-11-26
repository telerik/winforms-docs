---
title: Parsing Dates
page_title: Parsing Dates | RadMaskedEditBox
description: When RadMaskedEditBox is with MaskType FreeFormDateTime the control tries to recognize a free-form string and convert it to a valid date. 
slug: winforms/editors/maskededitbox/parsing-dates
tags: parsing,dates
published: True
position: 9
previous_url: editors-maskededitbox-parsing-dates
---

# Parsing Dates

When __RadMaskedEditBox__ is with __MaskType__.*FreeFormDateTime* the control tries to recognize a free-form string and convert it to a valid date. In this article you can find information about the algorithms that are using and what they are able to parse.

The input string can contain a date and time part. Entries are always interpreted left to right and date matching is attempted before time parsing.

## Date building blocks

A date is composed of different words or blocks of text. The first stage of date parsing is to split the input string in various "atoms" that are used to determine the actual date. __RadMaskedEditBox__ recognizes the following.

* __Numbers:__ Integer values that are interpreted as decimal numbers.

* __Month names:__ Both normal and abbreviated month names are recognized. The names will be different for each culture.

* __Time separators:__ A culture specific setting (a colon (":") symbol for the American English culture).

* __AM/PM designator:__ A culture-specific setting.

* __Week day names:__ both normal and abbreviated. These are also culture specific.

## Date grouping and structure

Date parts are grouped into known date entries that can be evaluated. The result contains a date and time part. The date part can be:

* A month/day/year triplet: a month can be either a numeric value or a month name. The order of the parts in the triplet is culture specific.

* A month/day or day/year pair: again, months can be both specified with a number or a name.

* If a DateFormat string without "d"(day part) is provided the value could be entered as month/year or year/month

* A single entry of a day, week day, month, or year.

The time part is simpler: it is always composed of one to three numbers and an optional AM/PM designator.

An important thing to note here is the way __RadMaskedEditBox__ determines the end of the date part and the start of the time one. The parser has two modes of operation: DateTime and TimeOnly. The mode is determined by the __DateFormat__ property value: if the date format does not contain any date-formatting instructions, then the control switches to TimeOnly mode. Both modes have different behavior with regard to time parsing:

* DateTime: An entry of "2 Jan 07 5 20" is interpreted as January 2, 2007 5:20 because the parser found a triplet that gives complete information about the date. Once it has matched the date, it treats the rest of the input as a time entry. Not supplying a full triplet can cause some of the time values to be interpreted as date numbers: e.g. "2 Jan 5 20" is interpreted as January 2, 2005 20:00 (8 PM). To give the control a hint that you are supplying a time value, separate the time values with the time separator. The above entry can be changed to "2 Jan 5:20" and __RadMaskedEditBox__ will correctly interpret it as January 2 5:20.

* TimeOnly: Having a TimeOnly mode means that we do not have to care about the date part and we can relax the time separator requirement. In this mode "4 15 30 pm" will be interpreted as 4:15:30 PM or 16:15:30.

## Date evaluation

The last step in date parsing is to take the entry and turn it into a real date. There are several rules that the control obeys.

* Incomplete dates are always evaluated taking the current date as a basis. For example, "January 2" means January 2 this year. If the current month is April, an entry of "10" is interpreted as April 10, this year.

* Numbers greater than 31 are always be interpreted as year values if possible (if within the __MinDate/MaxDate__ range).

* Two digit years are interpreted as a year in the __ShortDateCenturyStart-ShortDateCenturyEnd__ range. "89" means 1989, and 15 -- "2015".

* Week days are interpreted as a "move to the next available day" operation. Thus an entry of "Monday" moves to the next Monday and sets it as the selected date. Week day names are ignored if a fully specified date (a date triplet) is already entered.

* Single month names are interpreted as changing the month for the current date. If the current date is April 10, an entry of "Oct" will evaluate to October 10.

## Dates without separators

Besides the regular date parsing rules and heuristics described above, __RadMaskedEditBox__ can successfully parse 6-digit and 8-digit date formats that have no separators e.g. MMddyy or MMddyyyy. Note, however, that the support provided for these formats relies heavily on the currently set culture for the input control. For example __RadMaskedEditBox__ with an en-US culture set will use the short date format to interpret an entry as month-day-year. Here are a few sample entries for the __en-US__ culture:

* "050707" - __OK__, parsed as May 7th, 2007 (the control is trying to parse 05-07-07)

* "05072007" - __OK__, parsed as May 7th, 2007 (the control is trying to parse 05-07-2007 -- note that the digits are split like this based on the culture-specific slot distribution month, date, year i.e. in a 8-digit format where year should be last the last 4 digits of the representation)

* "070507" - __OK__, parsed as July 5th, 2007 (the control is trying to parse 07-05-07)

* "20070507" - __NOT OK__. In the en-US culture, this parses to 20-07-0507, which is evaluated as July 20th, 507. As this value is usually outside the range set by the __MinDate__ property, this date would be out of the valid range. To interpret this string as it was probably meant (with a 4-digit year in the first slot), the __RadMaskedEditBox__ control would need a different __Culture__ setting.

* "012010" - __OK__. Parsed as January 20th 2010. However, if both numbers are less than 12, the format will be considered during the parsing. For example if the current culture has format like "MM/YY", "5 9"" will be parsed as "5 2009". And if the current culture has format "YY/MM" the same input will be parsed as "2009 5". If one of the numbers is greater than 12, it will be considered as year, and the other one as month. If the both are greater than 12, the __RadMaskedEditBox__ will fail to parse the input string.

>note If the current culture was __fr-CA__ (with short date format "yyyy-MM-dd" where the year slot is first) the input entry "20070507" would be evaluated properly as May 7th, 2007.
>

>note 
* •	"moh-CA" culture has ‘’:" symbols in the MonthNames and DayNames which is used also as time separator symbol, which leads to incorrect parsing.
* •	"gd-GB", "vi-VN", "so-SO" cultures have " "(white space) symbols in the MonthNames collection which is recognized as separator from parse logic and month cannot be found correctly in some cases.
* •	"ja-JP","ko-KR","mn-MN"," ug-CN"," zh-CN"- in these cultures the MonthNames  or AbbreviatedMonthNames represent combination from digits and chars for example:"1月". The parse logic recognize this as two tokens which leads to incorrect result.
* •	These cultures "as-IN","bn-BD","bn-IN","bo-CN","dv-MV","hi-IN","km-KH","kh-IN","kn-IN","kok-IN","lo-LA","ml-IN", "mr-IN", "my-MM","ne-IN","ne-NP","nqo-GN", "or-IN","pa-IN","qut-GT","sa-IN","si-LK", "ta-IN","ta-LK","te-IN", "tzm-Tfng-MA" , "zgh-Tfng-MA" - have unsupported chars.
* •	"br-FR" - has " ' " symbols in the MonthNames  which is not supported from parsing logic.
* •	"fy-NL" - in this culture for MonthNames  for March and May are "maa***" and "maa***", AbbreviatedMonthNames for May is "maa", when the date is enter with "maa",the parse logic searching first into long names and return March but the user want May and typed it in AbbreviatedMonthNames format which is not correct parsing.>

## See Also

* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})
