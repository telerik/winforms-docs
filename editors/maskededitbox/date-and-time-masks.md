---
title: Date and Time Masks
page_title: Date and Time Masks
description: Date and Time Masks
slug: editors-maskededitbox-date-and-time-masks
tags: date,and,time,masks
published: True
position: 2
---

# Date and Time Masks



The tables below describe the mask characters that can be used when the __MaskType__ is __DateTime__.
        Note that the format characters are case sensitive.
      

## Standard Date Format codes

Full list of the supported masks can be found in the following MSDN article:
          [Standard DateTime masks](http://msdn.microsoft.com/en-us/library/az4se3k1(v=VS.71).aspx)
<table><tr><td>

<b>Format Character</b></td><td>

<b> Description</b></td></tr><tr><td>

d</td><td>

Short date pattern</td></tr><tr><td>

D</td><td>

Long date pattern</td></tr><tr><td>

f</td><td>

Full date and time (long date and short time)</td></tr><tr><td>

F</td><td>

Full date time pattern (long date and long time)</td></tr><tr><td>

g</td><td>

General (short date and short time)</td></tr><tr><td>

G</td><td>

General (short date and long time)</td></tr><tr><td>

m, M</td><td>

Month day pattern</td></tr><tr><td>

r, R</td><td>

RFC1123 pattern </td></tr><tr><td>

s</td><td>

Sortable date time pattern (based on ISO 8601) using local time</td></tr><tr><td>

t</td><td>

Short time pattern </td></tr><tr><td>

T</td><td>

Long time pattern </td></tr></table>

##  Custom Date Format codes

Where standard date codes are too restrictive, create your own custom formats using the format patterns listed below.
        

Full list of the supported masks can be found in the following MSDN article:
          [Custom DateTime masks](http://msdn.microsoft.com/en-us/library/8kb3ddd4(v=vs.71).aspx)

For example, a DateFormat of "ddd, MMMM yyyy - dd" might display:![editors-maskededitbox-date-and-time-masks 001](images/editors-maskededitbox-date-and-time-masks001.png)
<table><tr><td>

<b>Format Pattern</b></td><td>

<b>Description</b></td></tr><tr><td>

dd</td><td>

The numeric day of the month. </td></tr><tr><td>

ddd</td><td>

The abbreviated name of the day of the week.</td></tr><tr><td>

M</td><td>

The month name followed by the numeric day.</td></tr><tr><td>

MM</td><td>

The numeric month. </td></tr><tr><td>

MMM</td><td>

The abbreviated name of the month.</td></tr><tr><td>

MMMM</td><td>

The full name of the month.</td></tr><tr><td>

y</td><td>

The full month name and year numeric.</td></tr><tr><td>

yy</td><td>

The year without the century. </td></tr><tr><td>

yyy</td><td>

The year in four digits, including the century.</td></tr><tr><td>

h</td><td>

The hour in a 12-hour clock. </td></tr><tr><td>

hh</td><td>

The hour in a 12-hour clock. </td></tr><tr><td>

H</td><td>

The hour in a 24-hour clock. </td></tr><tr><td>

HH</td><td>

The hour in a 24-hour clock. </td></tr><tr><td>

m</td><td>

The minute.</td></tr><tr><td>

mm</td><td>

The minute. </td></tr><tr><td>

s</td><td>

The second. </td></tr><tr><td>

ss</td><td>

The second. </td></tr><tr><td>

t</td><td>

The first character in the AM/PM designator.</td></tr><tr><td>

tt</td><td>

The AM/PM designator.</td></tr></table>

## Accessing the MaskDateTimeProvider

When the mask type is set to *DateTime* you can access the MaskDateTimeProvider by casting to that appropriate type.
        

#### __[C#]__

{{region provider}}
	
	            radMaskedEditBox1.MaskType = MaskType.DateTime;
	            MaskDateTimeProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as MaskDateTimeProvider;
	            provider.AutoSelectNextPart = true;
	        
	{{endregion}}



#### __[VB.NET]__

{{region provider}}
	
	        RadMaskedEditBox1.MaskType = MaskType.DateTime
	        Dim provider As MaskDateTimeProvider = TryCast(Me.RadMaskedEditBox1.MaskedEditBoxElement.Provider, MaskDateTimeProvider)
	        provider.AutoSelectNextPart = True
	
	        '#End Region
	    End Sub
	End Class



More information about this provider can be found in the last section of the following article: [RadDateTimePicker Properties]({%slug editors-datetimepicker-basics-raddatetimepicker-properties%})
