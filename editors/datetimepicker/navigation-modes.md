---
title: Navigation Modes
page_title: Navigation Modes | RadDateTimePicker
description: This article shows how you can change the navigation mode of the underlying calendar
slug: winforms/editors/datetimepicker/navigation-modes
tags: navigation,modes
published: True
position: 6
previous_url: editors-datetimepicker-navigation-modes
---

# Navigation Modes
 
The embedded __RadCalendar__ has `HeaderNavigationMode` property, which determines what will be the behavior of control when the end-users clicks on the header of __RadCalendar__. In this article we will demonstrate how to change the default navigation mode.

#### Setting the value of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=HeaderNavigationMode}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=HeaderNavigationMode}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom;

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom

````

{{endregion}} 



# See Also

* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
* [Structure]({%slug winforms/editors/datetimepicker%})
