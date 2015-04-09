---
title: Navigation Modes
page_title: Navigation Modes
description: Navigation Modes
slug: editors-datetimepicker-navigation-modes
tags: navigation,modes
published: True
position: 2
---

# Navigation Modes



The embedded __RadCalendar__ has HeaderNavigationMode property, which determines what will be
        the behavior of control when end-users click on the header of __RadCalendar__.
        In this article we demonstrate how to change the default navigation mode.
      

#### __[C#] Setting the value of RadDateTimePicker__

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=HeaderNavigationMode}}
	
	            this.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom;
	
	{{endregion}}



#### __[VB.NET] Setting the value of RadDateTimePicker__

{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=HeaderNavigationMode}}
	
	        Me.radDateTimePicker1.DateTimePickerElement.Calendar.HeaderNavigationMode = HeaderNavigationMode.Zoom
	
	        '#End Region
	
	        '#Region FreeFormDateTimeDateTimePicker
	
	        Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime
	
	        '#End Region
	
	        '#Region "provider"
	        Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
	        provider.AutoSelectNextPart = True
	        '#End Region
	
	    End Sub
	End Class


