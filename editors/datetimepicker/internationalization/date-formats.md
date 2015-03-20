---
title: Date Formats
page_title: Date Formats
description: Date Formats
slug: editors-datetimepicker-internationalization-date-formats
tags: date,formats
published: True
position: 2
---

# Date Formats



## 

The table below displays a list of the standard format characters supported by __RadDateTimePicker__. The format characters are case-sensitive; for example, 'f' and 'F' represent different patterns.


<table><tr><td>

<b> Format Character</b></td><td> <b>Associated Property/ Description</b></td></tr><tr><td> d</td><td> ShortDatePattern </td></tr><tr><td> D</td><td> LongDatePattern </td></tr><tr><td> f</td><td> Full date and time (long date and short time)</td></tr><tr><td> F</td><td> FullDateTimePattern (long date and long time)</td></tr><tr><td> g</td><td> General (short date and short time)</td></tr><tr><td> G</td><td> General (short date and long time)</td></tr><tr><td> m, M</td><td> MonthDayPattern</td></tr><tr><td> r, R</td><td> RFC1123Pattern </td></tr><tr><td> s</td><td> SortableDateTimePattern (based on ISO 8601) using local time</td></tr><tr><td> t</td><td> ShortTimePattern </td></tr><tr><td> T</td><td> LongTimePattern </td></tr><tr><td> u</td><td> UniversalSortableDateTimePattern using the format for universal time display</td></tr><tr><td> U</td><td> Full date and time (long date and long time) using universal time</td></tr></table>

The table below shows a list of patterns that can be combined to create custom patterns. The patterns are case-sensitive; for example, "MM" is recognized, but "mm" is not. If the custom pattern contains white-space characters or characters enclosed in single quotation marks, the output string will also contain those characters. Characters not defined as part of a format pattern or as format characters are reproduced literally.


<table><tr><td> <b>Format Pattern</b></td><td>

<b>Description</b></td></tr><tr><td> dd</td><td> The day of the month. Single-digit days will have a leading zero.</td></tr><tr><td> ddd</td><td> The abbreviated name of the day of the week, as defined in AbbreviatedDayNames.</td></tr><tr><td> M</td><td> The full name of the day of the week, as defined in DayNames.</td></tr><tr><td> MM</td><td> The numeric month. Single-digit months will have a leading zero.</td></tr><tr><td> MMM</td><td> The abbreviated name of the month, as defined in AbbreviatedMonthNames.</td></tr><tr><td> MMMM</td><td> The full name of the month, as defined in MonthNames.</td></tr><tr><td> y</td><td> The year without the century. If the year without the century is less than 10, the year is displayed with no leading zero.</td></tr><tr><td> yy</td><td> The year without the century. If the year without the century is less than 10, the year is displayed with a leading zero.</td></tr><tr><td> yyy</td><td> The year in four digits, including the century.</td></tr><tr><td> gg</td><td> The period or era. This pattern is ignored if the date to be formatted does not have an associated period or era string.</td></tr><tr><td> h</td><td> The hour in a 12-hour clock. Single-digit hours will not have a leading zero.</td></tr><tr><td> hh</td><td> The hour in a 12-hour clock. Single-digit hours will have a leading zero.</td></tr><tr><td> H</td><td> The hour in a 24-hour clock. Single-digit hours will not have a leading zero.</td></tr><tr><td> HH</td><td> The hour in a 24-hour clock. Single-digit hours will have a leading zero.</td></tr><tr><td> m</td><td> The minute. Single-digit minutes will not have a leading zero.</td></tr><tr><td> mm</td><td> The minute. Single-digit minutes will have a leading zero.</td></tr><tr><td> s</td><td> The second. Single-digit seconds will not have a leading zero.</td></tr><tr><td> ss</td><td> The second. Single-digit seconds will have a leading zero.</td></tr><tr><td> t</td><td> The first character in the AM/PM designator defined in AMDesignator or PMDesignator, if any.</td></tr><tr><td> tt</td><td> The AM/PM designator defined in AMDesignator or PMDesignator, if any.</td></tr></table>
