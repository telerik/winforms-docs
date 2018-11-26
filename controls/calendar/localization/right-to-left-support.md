---
title: Right-To-Left Support
page_title: Right-To-Left Support | RadCalendar
description: Right-To-Left Support
slug: winforms/calendar/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 0
previous_url: calendar-localization-right-to-left-support
---

# Right-To-Left Support

__RadCalendar__ fully supports right-to-left (RTL) language locales. You can enable/disable the right-to-left support using the __RightToLeft__ enumeration, which has two members: __Yes__, __No__.

>caption Figure 1: RightToleft = No
![calendar-localization-right-to-left-support 001](images/calendar-localization-right-to-left-support001.png)

>caption Figure 2: RightToleft = Yes
![calendar-localization-right-to-left-support 002](images/calendar-localization-right-to-left-support002.png)


#### Setting RightToLeft

{{source=..\SamplesCS\Calendar\ColumnRowHeaders.cs region=rtl}} 
{{source=..\SamplesVB\Calendar\ColumnRowHeaders.vb region=rtl}} 

````C#
radCalendar1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
RadCalendar1.RightToLeft = RightToLeft.Yes

````

{{endregion}} 

## See Also

* [Date Format Pattern]({%slug winforms/calendar/localization/date-format-pattern%})
* [Globalization Properties]({%slug winforms/calendar/localization/globalization-properties%})
* [Localization]({%slug  winforms/calendar/localization%})
* [Localization Provider]({%slug winforms/calendar/localization/localization-provider%})
* [Properties that can be localized]({%slug winforms/calendar/localization/properties-that-can-be-localized%})
* [CultureInfo and RegionInfo Basics]({%slug winforms/calendar/localization/cultureinfo-and-regioninfo-basics%})

