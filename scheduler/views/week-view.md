---
title: Week View
page_title: Week View
description: Week View
slug: scheduler-views-week-view
tags: week,view
published: True
position: 6
---

# Week View



## Overview

The Week view by default shows a full seven-day week week at a time, which can be set to start at a predefined day
          (say Monday, or Sunday). To move to the next or previous week, you can use the back and forward keyboard arrows, or the [SchedulerNavigator]({%slug scheduler-scheduler-navigator-overview%}) control, which also allows you to control whether to show weekends or not.
        

![scheduler-views-week-view 001](images/scheduler-views-week-view001.png)

## Setting Week View

To explicitly set the Work Week to be the default view which the user sees on the form:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WeekView.cs region=activeViewType}}
	            this.radScheduler1.ActiveViewType = SchedulerViewType.Week;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WeekView.vb region=activeViewType}}
	        Me.RadScheduler1.ActiveViewType = SchedulerViewType.Week
	        '#End Region
	
	        '#Region weekView
	        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
	        '			#End Region
	
	        '#Region activeView
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Week Then
	            Dim activeWeekView As SchedulerWeekView = CType(Me.RadScheduler1.ActiveView, SchedulerWeekView)
	        End If
	        '#End Region
	
	        '#Region showWeekend
	        weekView.ShowWeekend = False
	        '#End Region
	
	        '#Region workTime
	        weekView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region "workDays"
	        weekView.WorkWeekStart = DayOfWeek.Tuesday
	        weekView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        weekView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        weekView.RangeFactor = ScaleRange.TenMinutes
	        weekView.RulerStartScale = 11
	        weekView.RulerStartScaleMinutes = 40
	        weekView.RulerEndScale = 14
	        weekView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        weekView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        weekView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        weekView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        weekView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours12
	        '			#End Region
	
	        '#Region 24rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        weekView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        weekView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class





## Getting Week View

To get the instance to the SchedulerWeek view from the RadScheduler object, either:

* use the __GetDayView__ method:
            

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WeekView.cs region=weekView}}
	            SchedulerWeekView weekView = this.radScheduler1.GetWeekView();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WeekView.vb region=weekView}}
	        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
	        '			#End Region
	
	        '#Region activeView
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Week Then
	            Dim activeWeekView As SchedulerWeekView = CType(Me.RadScheduler1.ActiveView, SchedulerWeekView)
	        End If
	        '#End Region
	
	        '#Region showWeekend
	        weekView.ShowWeekend = False
	        '#End Region
	
	        '#Region workTime
	        weekView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region "workDays"
	        weekView.WorkWeekStart = DayOfWeek.Tuesday
	        weekView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        weekView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        weekView.RangeFactor = ScaleRange.TenMinutes
	        weekView.RulerStartScale = 11
	        weekView.RulerStartScaleMinutes = 40
	        weekView.RulerEndScale = 14
	        weekView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        weekView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        weekView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        weekView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        weekView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours12
	        '			#End Region
	
	        '#Region 24rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        weekView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        weekView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class



>This method returns null if the active view of the scheduler is not SchedulerWeekView.

* use the RadScheduler __ActiveView__ property:             
            

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WeekView.cs region=activeView}}
	            this.radScheduler1.ActiveViewType = SchedulerViewType.Week;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WeekView.vb region=activeView}}
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Week Then
	            Dim activeWeekView As SchedulerWeekView = CType(Me.RadScheduler1.ActiveView, SchedulerWeekView)
	        End If
	        '#End Region
	
	        '#Region showWeekend
	        weekView.ShowWeekend = False
	        '#End Region
	
	        '#Region workTime
	        weekView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region "workDays"
	        weekView.WorkWeekStart = DayOfWeek.Tuesday
	        weekView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        weekView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        weekView.RangeFactor = ScaleRange.TenMinutes
	        weekView.RulerStartScale = 11
	        weekView.RulerStartScaleMinutes = 40
	        weekView.RulerEndScale = 14
	        weekView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        weekView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        weekView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        weekView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        weekView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours12
	        '			#End Region
	
	        '#Region 24rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        weekView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        weekView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class



## Showing/hiding the weekend

By default the weekends are shown, but you can hide them by using the __ShowWeekend__ property: 
        

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WeekView.cs region=showWeekend}}
	            weekView.ShowWeekend = false;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WeekView.vb region=showWeekend}}
	        weekView.ShowWeekend = False
	        '#End Region
	
	        '#Region workTime
	        weekView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region "workDays"
	        weekView.WorkWeekStart = DayOfWeek.Tuesday
	        weekView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	
	        ' #Region "showHideAllDay"
	        weekView.ShowAllDayArea = False
	        '#End Region
	
	        '#Region "rulerStartScaleMinutes"
	
	        weekView.RangeFactor = ScaleRange.TenMinutes
	        weekView.RulerStartScale = 11
	        weekView.RulerStartScaleMinutes = 40
	        weekView.RulerEndScale = 14
	        weekView.RulerEndScaleMinutes = 10
	
	        '#End Region
	
	        '#Region showDayHeaders
	        weekView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        weekView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        weekView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        weekView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerScale
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours12
	        '			#End Region
	
	        '#Region 24rulerTimeFormat
	        weekView.RulerStartScale = 9
	        weekView.RulerEndScale = 14
	        weekView.RulerTimeFormat = RulerTimeFormat.hours24
	        '#End Region
	
	        '#Region showRuler
	        weekView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        weekView.RulerWidth = 40
	        '#End Region
	    End Sub
	End Class



# See Also

 * [Day View]({%slug scheduler-views-day-view%})
