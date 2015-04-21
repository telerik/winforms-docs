---
title: Customizing Zoom Navigation
page_title: Customizing Zoom Navigation
description: Customizing Zoom Navigation
slug: calendar-customizing-behavior-customizing-zoom-navigation
tags: customizing,zoom,navigation
published: True
position: 4
---

# Customizing Zoom Navigation



## 

This article will guide you through the process of creating a month-year picker. For this purpose, it is necessary to set the __HeaderNavigationMode__
        property to HeaderNavigationMode.*Zoom* and set the __ZoomLevel__ property to ZoomLevel.*Months*. 
        This will allow the user to select a specific __CalendarCellElement__ and navigate upwards/downwards in the __RadCalendar__ similar to Windows calendar. 

#### __[C#]__

{{source=..\SamplesCS\Calendar\Calendar1.cs region=monthYearPicker}}
	
	            this.radCalendar1.HeaderNavigationMode = HeaderNavigationMode.Zoom;
	            this.radCalendar1.ZoomLevel = ZoomLevel.Months;
	
	            this.radCalendar1.ZoomChanging += new CalendarZoomChangingEventHandler(radCalendar1_ZoomChanging);
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Calendar\Calendar1.vb region=monthYearPicker}}
	
	        Me.RadCalendar1.HeaderNavigationMode = HeaderNavigationMode.Zoom
	        Me.RadCalendar1.ZoomLevel = ZoomLevel.Months
	
	        AddHandler Me.RadCalendar1.ZoomChanging, AddressOf radCalendar1_ZoomChanging
	
	{{endregion}}



In addition, you should subscribe to the __ZoomChanging__ event and stop navigation from the currently selected month to its days
        representation and from a year to a range of years.

#### __[C#]__

{{source=..\SamplesCS\Calendar\Calendar1.cs region=monthYearPickerEvent}}
	
	        void radCalendar1_ZoomChanging(object sender, CalendarZoomChangingEventArgs e)
	        {
	            if (this.radCalendar1.ZoomLevel == ZoomLevel.Years && e.Direction == DrillDirection.Up) 
	            {
	                e.Cancel = true;
	            }
	            if (this.radCalendar1.ZoomLevel == ZoomLevel.Months && e.Direction == DrillDirection.Down) 
	            {
	                e.Cancel = true;
	            }
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Calendar\Calendar1.vb region=monthYearPickerEvent}}
	
	    Private Sub radCalendar1_ZoomChanging(sender As Object, e As CalendarZoomChangingEventArgs)
	        If Me.RadCalendar1.ZoomLevel = ZoomLevel.Years AndAlso e.Direction = DrillDirection.Up Then
	            e.Cancel = True
	        End If
	        If Me.RadCalendar1.ZoomLevel = ZoomLevel.Months AndAlso e.Direction = DrillDirection.Down Then
	            e.Cancel = True
	        End If
	    End Sub
	{{endregion}}

![calendar-customizing-behavior-customizing-zoom-navigation 001](images/calendar-customizing-behavior-customizing-zoom-navigation001.gif)
