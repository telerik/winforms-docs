---
title: CultureInfo and RegionInfo Basics
page_title: CultureInfo and RegionInfo Basics | RadCalendar
description: CultureInfo and RegionInfo Basics
slug: winforms/calendar/localization/cultureinfo-and-regioninfo-basics
tags: cultureinfo,and,regioninfo,basics
published: True
position: 1
previous_url: calendar-localization-cultureinfo-and-regioninfo-basics
---

# CultureInfo and RegionInfo Basics

Telerik RadCalendar provides full support for the __System.Globalization Namespace__. This namespace consists of classes (CompareInfo, CultureInfo, RegionInfo, etc.) which contain culture-related information, such as the language, country/region, calendars in use, format patterns for dates, currency, and numbers, and the sort order for strings. They are useful classes for writing internationalized applications.

Two of the most important classes in this namespaces are: __CultureInfo__ and __RegionInfo__. 

## CultureInfo

Represents information about a specific culture including the names of the culture, the writing system, and the calendar used, as well as access to culture-specific objects that provide information for common operations, such as formatting dates and sorting strings.

The culture names follow the RFC 1766 standard in the format "<languagecode2>-<country/regioncode2>", where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is "en-US".

The complete list of the predefined __CultureInfo__ names and identifiers can be found in __CultureInfo__ class and  the classes in the __System.Globalization__ namespace.

The table below is a sample list of the names and identifiers found in the CultureInfo class.

| Culture Name | Culture Identifier | Language-Country/Region |
| ------- | ------- | ------- |
|bg-BG|0x0402|Bulgarian - Bulgaria|
|en-GB|0x0809|English - United Kingdom|
|fr-FR|0x040C|French - France|
|es-ES|0x0C0A|Spanish - Spain|
|ar-SA|0x0401|Arabic - Saudi Arabia|
|fa-IR|0x0429|Farsi - Iran|
|ps-AF|0x0463|Pashto - Afghanistan|

>caption Figure 1: Setting Pashto Culture

![calendar-localization-cultureinfo-and-regioninfo-basics 001](images/calendar-localization-cultureinfo-and-regioninfo-basics001.png)

{{source=..\SamplesCS\Calendar\Calendar1.cs region=SetPashtoCulture}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=SetPashtoCulture}} 

````C#
this.radCalendar1.Culture = new System.Globalization.CultureInfo("ps-AF");

````
````VB.NET
Me.RadCalendar1.Culture = New System.Globalization.CultureInfo("ps-AF")

````

{{endregion}} 

>note There is a known issue in the .NET Framework considering the "fa-IR" culture. Please refer to the following MSDN resource for a solution: [Fixing Persian Locale for Persian Calendar and Month Names](https://code.msdn.microsoft.com/Fixing-Persian-Locale-for-6e66e044)


## RegionInfo

The __RegionInfo__ class contains information about the country/region.  In contrast to __CultureInfo__, __RegionInfo__ does not represent preferences of the user and does not depend on the user's language or culture. The __RegionInfo__ name is one of the two-letter codes defined in ISO 3166 for country/region. Case is not significant; however, the __Name__, the __TwoLetterISORegionName__, and the __ThreeLetterISORegionName__ properties return the appropriate code in uppercase.

## See Also

* [Date Format Pattern]({%slug winforms/calendar/localization/date-format-pattern%})
* [Globalization Properties]({%slug winforms/calendar/localization/globalization-properties%})
* [Localization]({%slug  winforms/calendar/localization%})
* [Localization Provider]({%slug winforms/calendar/localization/localization-provider%})
* [Properties that can be localized]({%slug winforms/calendar/localization/properties-that-can-be-localized%})
* [Right-To-Left Support]({%slug winforms/calendar/localization/right-to-left-support%})
