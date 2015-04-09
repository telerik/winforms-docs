---
title: MultiDay View
page_title: MultiDay View
description: MultiDay View
slug: scheduler-views-multiday-view
tags: multiday,view
published: True
position: 5
---

# MultiDay View





## Overview



MultidayView shows multiple date-time intervals with appointments arranged one next to another. In the screenshot below we have MultidayView with two intervals – the first one starts from July 03 with duration of two days and the second on starts from July 07 with duration of 3 days.![scheduler-views-multiday-view 001](images/scheduler-views-multiday-view001.png)

## Using MultidayView





1. In order to set the current view of RadScheduler to MultidayView, use the ActiveViewType or ActiveView properties:

#### __[C#] Setting the current view to MultiDayView__

{{source=..\SamplesCS\Scheduler\Views\MultiDayView.cs region=multiDay}}
	            this.radScheduler1.ActiveViewType = SchedulerViewType.MultiDay;
	            //or
	            SchedulerMultiDayView multiDayView = new SchedulerMultiDayView();
	            DateTime startDate = DateTime.Today;
	            multiDayView.Intervals.Add(startDate, 2);
	            multiDayView.Intervals.Add(startDate.AddDays(4), 3);
	            this.radScheduler1.ActiveView = multiDayView;
	{{endregion}}



#### __[VB.NET] Setting the current view to MultiDayView__

{{source=..\SamplesVB\Scheduler\Views\MultiDayView.vb region=multiDay}}
	        Me.RadScheduler1.ActiveViewType = SchedulerViewType.MultiDay
	        'or
	        Dim multiDayView As New SchedulerMultiDayView()
	        Dim startDate As Date = Date.Today
	        multiDayView.Intervals.Add(startDate, 2)
	        multiDayView.Intervals.Add(startDate.AddDays(4), 3)
	        Me.RadScheduler1.ActiveView = multiDayView
	        '#End Region
	
	        '#Region interval
	        Dim interval As New DateTimeInterval()
	        interval.Duration = New TimeSpan(20, 5, 25)
	        multiDayView.GetAppointmentsInInterval(interval)
	        '#End Region
	
	        '#Region getDayView
	        Me.RadScheduler1.GetDayView().WorkTime = New TimeInterval(TimeSpan.FromHours(5), TimeSpan.FromHours(9))
	        '#End Region
	
	        '#Region "workDays"
	        multiDayView.WorkWeekStart = DayOfWeek.Tuesday
	        multiDayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        multiDayView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        multiDayView.RangeFactor = ScaleRange.TenMinutes
	        multiDayView.RulerStartScale = 11
	        multiDayView.RulerStartScaleMinutes = 40
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        multiDayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        multiDayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        multiDayView.RangeFactor = ScaleRange.Hour
	        '			#End Region
	
	        '#Region rulerScaleSize
	        multiDayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerTimeFormat = RulerTimeFormat.hours12
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        multiDayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        multiDayView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class



1. To add, remove or modify a date-time __Interval__ in SchedulerMultiDayView instance use the __Intervals__ collection.

1. To get all appointments in a particular interval, use the __GetAppointmentsInInterval__ helper method:

#### __[C#] Getting all appointments in a particular interval__

{{source=..\SamplesCS\Scheduler\Views\MultiDayView.cs region=interval}}
	            DateTimeInterval interval = new DateTimeInterval();
	            interval.Duration = new TimeSpan(20, 5, 25);
	            multiDayView.GetAppointmentsInInterval(interval);
	{{endregion}}



#### __[VB.NET] Getting all appointments in a particular interval__

{{source=..\SamplesVB\Scheduler\Views\MultiDayView.vb region=interval}}
	        Dim interval As New DateTimeInterval()
	        interval.Duration = New TimeSpan(20, 5, 25)
	        multiDayView.GetAppointmentsInInterval(interval)
	        '#End Region
	
	        '#Region getDayView
	        Me.RadScheduler1.GetDayView().WorkTime = New TimeInterval(TimeSpan.FromHours(5), TimeSpan.FromHours(9))
	        '#End Region
	
	        '#Region "workDays"
	        multiDayView.WorkWeekStart = DayOfWeek.Tuesday
	        multiDayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        multiDayView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        multiDayView.RangeFactor = ScaleRange.TenMinutes
	        multiDayView.RulerStartScale = 11
	        multiDayView.RulerStartScaleMinutes = 40
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        multiDayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        multiDayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        multiDayView.RangeFactor = ScaleRange.Hour
	        '			#End Region
	
	        '#Region rulerScaleSize
	        multiDayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerTimeFormat = RulerTimeFormat.hours12
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        multiDayView.RulerStartScale = 9
	        multiDayView.RulerEndScale = 14
	        multiDayView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        multiDayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        multiDayView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class



1. To get all appointments in the view, use the __Appointments__ collection.
