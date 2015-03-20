---
title: CultureInfo and RegionInfo Basics
page_title: CultureInfo and RegionInfo Basics
description: CultureInfo and RegionInfo Basics
slug: calendar-localization-cultureinfo-and-regioninfo-basics
tags: cultureinfo,and,regioninfo,basics
published: True
position: 1
---

# CultureInfo and RegionInfo Basics



Telerik RadCalendar provides full support for the __System.Globalization Namespace__. This namespace consists of classes (CompareInfo, CultureInfo, RegionInfo, etc.) which contain culture-related information, such as the language, country/region, calendars in use, format patterns for dates, currency, and numbers, and the sort order for strings. They are useful classes for writing internationalized applications.

Two of the most important classes in this namespace are: __CultureInfo__ and __RegionInfo__. 

## CultureInfo

Represents information about a specific culture including the names of the culture, the writing system, and the calendar used, as well as access to culture-specific objects that provide information for common operations, such as formatting dates and sorting strings.

The culture names follow the RFC 1766 standard in the format "<languagecode2>-<country/regioncode2>", where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, U.S. English is "en-US".

The complete list of the predefined __CultureInfo__ names and identifiers can be found in __CultureInfo__ class and  the classes in the __System.Globalization__ namespace.

The table below is a sample list of the names and identifiers found in the CultureInfo class.


<table><tr><td>

<b>Culture Name</b></td><td>

<b> Culture Identifier</b></td><td>

<b>Language-Country/Region</b></td></tr><tr><td> bg-BG</td><td> 0x0402</td><td> Bulgarian - Bulgaria</td></tr><tr><td> en-GB</td><td> 0x0809</td><td> English - United Kingdom</td></tr><tr><td> fr-FR</td><td> 0x040C</td><td> French - France</td></tr><tr><td> es-ES</td><td> 0x0C0A</td><td> Spanish - Spain</td></tr></table>











## RegionInfo

The __RegionInfo__ class contains information about the country/region.  In contrast to __CultureInfo__, __RegionInfo__ does not represent preferences of the user and does not depend on the user's language or culture. The __RegionInfo__ name is one of the two-letter codes defined in ISO 3166 for country/region. Case is not significant; however, the __Name__, the __TwoLetterISORegionName__, and the __ThreeLetterISORegionName__ properties return the appropriate code in uppercase.
