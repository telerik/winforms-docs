---
title: Properties that can be localized
page_title: Properties that can be localized | UI for WinForms Documentation
description: Properties that can be localized
slug: winforms/calendar/localization/properties-that-can-be-localized
tags: properties,that,can,be,localized
published: True
position: 4
previous_url: calendar-localization-properties-that-can-be-localized
---

# Properties that can be localized

The following properties can be localized:


| Property | Description |
| ------ | ------ |
|NavigationPrevText|Gets or sets the text displayed for the previous month navigation control.|
|NavigationNextText|Gets or sets the text displayed for the next month navigation control.|
|FastNavigationPrevText|Gets or sets the text displayed for the fast previous navigation control.|
|FastNavigationNextText|Gets or sets the text displayed for the fast next navigation control.|
|NavigationPrevToolTip|Gets or sets the text displayed as a tooltip for the previous month navigation control.|
|NavigationNextToolTip|Gets or sets the text displayed as a tooltip for the next month navigation control.|
|FastNavigationPrevToolTip|Gets or sets the text displayed as a tooltip for the fast navigation previous month control.|
|FastNavigationNextToolTip|Gets or sets the text displayed as a tooltip for the fast navigation next month control.|
|RowHeaderText|Provides custom text for the row header cells.|
|ColumnHeaderText|Provides custom text for the column header cells.|
|ViewSelectorText|The text displayed in the view selector cell.|

__TodayButton__


| Property | Description |
| ------ | ------ |
|Text|Gets or sets the text associated with Today button.|#_[C#] Assigning the TodayButton Text_


{{source=..\SamplesCS\Calendar\Calendar1.cs region=localizingText}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=localizingText}} 

````C#
this.radCalendar1.TodayButton.Text = "Aujourd'hui";

````
````VB.NET
Me.RadCalendar1.TodayButton.Text = "Aujourd'hui"

````

{{endregion}} 

__ClearButton__


| Property | Description |
| ------ | ------ |
|Text|Gets or sets the text associated with Clear button.|


## See Also

* [Date Format Pattern]({%slug winforms/calendar/localization/date-format-pattern%})
* [Globalization Properties]({%slug winforms/calendar/localization/globalization-properties%})
* [Localization]({%slug  winforms/calendar/localization%})
* [Localization Provider]({%slug winforms/calendar/localization/localization-provider%})
* [CultureInfo and RegionInfo Basics]({%slug winforms/calendar/localization/cultureinfo-and-regioninfo-basics%})
* [Right-To-Left Support]({%slug winforms/calendar/localization/right-to-left-support%})