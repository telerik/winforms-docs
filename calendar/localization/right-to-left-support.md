---
title: Right-To-Left Support
page_title: Right-To-Left Support | UI for WinForms Documentation
description: Right-To-Left Support
slug: winforms/calendar/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 0
---

# Right-To-Left Support



## 

RadCalendar fully supports right-to-left (RTL) language locales. You can enable/disable the right-to-left support using the __RightToLeft__ enumeration, which has two members: __Yes__, __No__.

![calendar-localization-right-to-left-support 001](images/calendar-localization-right-to-left-support001.png)

__Assigning RightToLeft__


{{source=..\SamplesCS\Calendar\ColumnRowHeaders.cs region=rtl}} 
{{source=..\SamplesVB\Calendar\ColumnRowHeaders.vb region=rtl}} 

````C#
radCalendar1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
RadCalendar1.RightToLeft = RightToLeft.Yes

````

{{endregion}} 



