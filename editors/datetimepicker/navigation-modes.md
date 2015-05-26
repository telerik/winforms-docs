---
title: Navigation Modes
page_title: Navigation Modes | UI for WinForms Documentation
description: Navigation Modes
slug: winforms/editors/datetimepicker/navigation-modes
tags: navigation,modes
published: True
position: 2
---

# Navigation Modes



The embedded __RadCalendar__ has HeaderNavigationMode property, which determines what will be
        the behavior of control when end-users click on the header of __RadCalendar__.
        In this article we demonstrate how to change the default navigation mode.
      #_[C#] Setting the value of RadDateTimePicker_

	



{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=HeaderNavigationMode}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=HeaderNavigationMode}} 

````C#

            this.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom;
````
````VB.NET

        Me.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom

        '
````

{{endregion}} 



