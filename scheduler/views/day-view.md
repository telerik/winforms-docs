---
title: Day View
page_title: Day View
description: Day View
slug: scheduler-views-day-view
tags: day,view
published: True
position: 4
---

# Day View



## Overview

The Day view shows one or more days at a time. To move to the next or previous day, you can use the back and forward keyboard arrows, or the [SchedulerNavigator]({%slug scheduler-scheduler-navigator-overview%}) control.
        

![scheduler-views-day-view 001](images/scheduler-views-day-view001.png)

## Setting Day View

The Day View is the default RadScheduler view, but you can explicitly set it to be the view which the user sees:

#### __[C#]__

{{region activeViewType}}
	            this.radScheduler1.ActiveViewType = SchedulerViewType.Day;
	{{endregion}}



#### __[VB.NET]__

{{region activeViewType}}
	        Me.RadScheduler1.ActiveViewType = SchedulerViewType.Day
	        '#End Region
	
	        '#Region getDayView
	        Dim dayView As SchedulerDayView = Me.RadScheduler1.GetDayView()
	        '#End Region
	
	        '#Region activeView
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Day Then
	            Dim activeDayView As SchedulerDayView = CType(Me.RadScheduler1.ActiveView, SchedulerDayView)
	        End If
	        '#End Region
	
	        '#Region dayCount
	        dayView.DayCount = 3
	        '#End Region
	
	        '#Region workTime
	        dayView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region workWeek
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class





## Getting Day View

To get the instance to the SchedulerDayView from the RadScheduler object, either:

* 
            use the __GetDayView__ method:

            

#### __[C#]__

{{region getDayView}}
	            SchedulerDayView dayView = this.radScheduler1.GetDayView();
	{{endregion}}



#### __[VB.NET]__

{{region getDayView}}
	        Dim dayView As SchedulerDayView = Me.RadScheduler1.GetDayView()
	        '#End Region
	
	        '#Region activeView
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Day Then
	            Dim activeDayView As SchedulerDayView = CType(Me.RadScheduler1.ActiveView, SchedulerDayView)
	        End If
	        '#End Region
	
	        '#Region dayCount
	        dayView.DayCount = 3
	        '#End Region
	
	        '#Region workTime
	        dayView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region workWeek
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



>This method returns null if the active view of the scheduler is not SchedulerDayView.

* use the the RadScheduler __ActiveView__ property:
               
            

#### __[C#]__

{{region activeView}}
	            this.radScheduler1.ActiveViewType = SchedulerViewType.Day;
	{{endregion}}



#### __[VB.NET]__

{{region activeView}}
	        If Me.RadScheduler1.ActiveViewType = SchedulerViewType.Day Then
	            Dim activeDayView As SchedulerDayView = CType(Me.RadScheduler1.ActiveView, SchedulerDayView)
	        End If
	        '#End Region
	
	        '#Region dayCount
	        dayView.DayCount = 3
	        '#End Region
	
	        '#Region workTime
	        dayView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region workWeek
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Changing the number of days visible

The Day View can show a predefined number of days through the __DayCount__ property. The default value is 3 days, whereas the minimum value is 1 day and the maximum is 10 days:
        

#### __[C#]__

{{region dayCount}}
	            dayView.DayCount = 3;
	{{endregion}}



#### __[VB.NET]__

{{region dayCount}}
	        dayView.DayCount = 3
	        '#End Region
	
	        '#Region workTime
	        dayView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region workWeek
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class





## Changing the work time

The work time hours is a predefined range of hours, which can be specified within the timeline to make it easier for end-users to carry out scheduling. They are properly indicated by a lighter color, similar to Microsoft Outlook, and are controled from the __TimeInterval__ property.
        

#### __[C#]__

{{region workTime}}
	            dayView.WorkTime = TimeInterval.DefaultWorkTime;
	{{endregion}}



#### __[VB.NET]__

{{region workTime}}
	        dayView.WorkTime = TimeInterval.DefaultWorkTime
	        '#End Region
	
	        '#Region workWeek
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



Example when you set 4 hours working day:
        

![scheduler-views-day-view 002](images/scheduler-views-day-view002.png)

Additionally, you can specify which week days are part of the working week. This can be achieved by setting the __WorkWeekStart__ and __WorkWeekEnd__ properties.
        

#### __[C#]__

{{region workWeek}}
	            dayView.WorkWeekStart = DayOfWeek.Thursday;
	            dayView.WorkWeekEnd = DayOfWeek.Saturday;
	{{endregion}}



#### __[VB.NET]__

{{region workWeek}}
	        dayView.WorkWeekStart = DayOfWeek.Thursday
	        dayView.WorkWeekEnd = DayOfWeek.Saturday
	
	        '#End Region
	        '#Region showHeader
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Showing and hiding the Day Headers

Showing/hiding the day headers is done through the __ShowHeader__ property (the default setting is True):
        

#### __[C#]__

{{region showHeader}}
	            dayView.ShowHeader = true;
	{{endregion}}



#### __[VB.NET]__

{{region showHeader}}
	        dayView.ShowHeader = True
	        '#End Region
	
	        '#Region headerFormat
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Customizing the day header format

RadScheduler uses the [.NET Standard DateTime Format Strings](http://msdn.microsoft.com/en-us/library/az4se3k1(VS.71).aspx), which can be set through the __HeaderFormat__ property (either in design time or through code). The default value is "MMMM dd":
        

#### __[C#]__

{{region headerFormat}}
	            dayView.HeaderFormat = "MMMM dd";
	{{endregion}}



#### __[VB.NET]__

{{region headerFormat}}
	        dayView.HeaderFormat = "MMMM dd"
	        '#End Region
	
	        '#Region rangeFactor
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Customizing the time ruler area

## Ruler Scale

The default __scale of the ruler__ can be set with a single property (__RangeFactor__) to any of the predefined values, or the user can select a new scale by simply right-clicking in the time ruler and selecting the preferable setting. The Range factor modes are (the default is 60 minutes):
        

* 5 minutes

* 6 minutes

* 10 minutes

* 15 minutes (quarter hour)

* 30 minutes (half hour)

* 60 minutes (one hour) - this is the default value.



#### __[C#]__

{{region rangeFactor}}
	            dayView.RangeFactor = ScaleRange.Hour;
	{{endregion}}



#### __[VB.NET]__

{{region rangeFactor}}
	        dayView.RangeFactor = ScaleRange.Hour
	        '#End Region
	
	        '#Region rulerScaleSize
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class





## Ruler Height and Row Height

The size of the ruler height (and row height respectively) is controlled by the __RulerScaleSize__ property, for example 50px:
        

#### __[C#]__

{{region rulerScaleSize}}
	            dayView.RulerScaleSize = 50;
	{{endregion}}



#### __[VB.NET]__

{{region rulerScaleSize}}
	        dayView.RulerScaleSize = 50
	        '#End Region
	
	        '#Region rulerStartScale
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Start and End Times

You can control which hours are visible in the view by using __RulerStartScale__ and __RulerEndScale__ properties,
          where the start time cannot be bigger than the end time. The minimum and maximum values should are between 0 and 24.
          Setting the start and end times is needed when you do not want to show all hours in a day. Additionally, you can use the
          __RulerStartScaleMinutes__ and __RulerEndScaleMinutes__ properties to go into more detail and specify the minutes part of
          the starting and ending times. Note that the minutes are automatically rounded down to the previous ruler tick. You
          can use the __RulerScale__ property to set the frequency of the ruler ticks. The following example shows how you can show the time between 9:30 and 14:45:
        

#### __[C#]__

{{region rulerStartScale}}
	            dayView.RangeFactor = ScaleRange.QuarterHour;
	            dayView.RulerStartScale = 9;
	            dayView.RulerStartScaleMinutes = 30;
	            dayView.RulerEndScale = 14; 
	            dayView.RulerEndScaleMinutes = 45;
	{{endregion}}



#### __[VB.NET]__

{{region rulerStartScale}}
	        dayView.RangeFactor = ScaleRange.QuarterHour
	        dayView.RulerStartScale = 9
	        dayView.RulerStartScaleMinutes = 30
	        dayView.RulerEndScale = 14
	        dayView.RulerEndScaleMinutes = 45
	        '#End Region
	
	        '#Region 12rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



![scheduler-views-day-view 003](images/scheduler-views-day-view003.png)

![scheduler-views-day-view 004](images/scheduler-views-day-view004.png)

## Ruler Time Format (am/pm)

The __RulerFormatStrings__ property changes the time format in the ruler between am and pm.
          The properties of the __RulerFormatStrings__ class allow you to specify the hour and minute formats for both types of ticks (whole hour ticks and sub hour ticks).
          The following example demonstrates the usage of __RulerFormatStrings__:
        


<table><tr><td>

#### __[C#]__

{{region 12rulerTimeFormat}}
	            dayView.RulerStartScale = 9;
	            dayView.RulerEndScale = 14;
	            dayView.RulerFormatStrings = new RulerFormatStrings("%h", "mm", "", "");
	{{endregion}}



#### __[VB.NET]__

{{region 12rulerTimeFormat}}
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%h", "mm", "", "")
	        '#End Region
	
	        '#Region 24rulerTimeFormat
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class

</td><td>

![scheduler-views-day-view 005](images/scheduler-views-day-view005.png)</td></tr><tr><td>

#### __[C#]__

{{region 24rulerTimeFormat}}
	            dayView.RulerStartScale = 9;
	            dayView.RulerEndScale = 14;
	            dayView.RulerFormatStrings = new RulerFormatStrings("%H", "mm", "", "");
	{{endregion}}



#### __[VB.NET]__

{{region 24rulerTimeFormat}}
	        dayView.RulerStartScale = 9
	        dayView.RulerEndScale = 14
	        dayView.RulerFormatStrings = New RulerFormatStrings("%H", "mm", "", "")
	        '#End Region
	
	        '#Region showRuler
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class

</td><td>

![scheduler-views-day-view 006](images/scheduler-views-day-view006.png)</td></tr></table>



## Showing and Hiding the Ruler

To show and hide the ruler, use the __ShowRuler__ property:
        

#### __[C#]__

{{region showRuler}}
	            dayView.ShowRuler = true;
	{{endregion}}



#### __[VB.NET]__

{{region showRuler}}
	        dayView.ShowRuler = True
	        '#End Region
	
	        '#Region rulerWidth
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class





## Ruler Width 

The width of the ruler is controlled from the __RulerWidth__ property, whereas the minimum value is 0, and the default value is 40px:
        

#### __[C#]__

{{region rulerWidth}}
	            dayView.RulerWidth = 40;
	{{endregion}}



#### __[VB.NET]__

{{region rulerWidth}}
	        dayView.RulerWidth = 40
	        '#End Region
	
	        '#Region currentTimePointer
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class





## Current Time Pointer

The current time pointer is a thin line on the ruler and on the today’s column in the appointments area and it
          visually represents the current time. The current time pointer belongs to the __RulerPrimitive__ which is a visual element,
          part of the element tree of __SchedulerDayViewElement__. You can manipulate this line in two ways – by setting its style or by setting its width. The following code snippet demonstrates this:
        

#### __[C#]__

{{region currentTimePointer}}
	            SchedulerDayViewElement dayViewElement = (SchedulerDayViewElement)this.radScheduler1.ViewElement;
	            dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow;
	            dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3;
	            dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red;
	{{endregion}}



#### __[VB.NET]__

{{region currentTimePointer}}
	        Dim dayViewElement As SchedulerDayViewElement = DirectCast(Me.RadScheduler1.ViewElement, SchedulerDayViewElement)
	        dayViewElement.DataAreaElement.Ruler.TimePointerStyle = RulerCurrentTimePointer.Arrow
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerWidth = 3
	        dayViewElement.DataAreaElement.Ruler.CurrentTimePointerColor = Color.Red
	        '#End Region
	
	        '#Region allDayArea
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## The AllDay area

The AllDay area contains appointments that are either defined as AllDay appointments or their duration is greater than 24 hours.
          The appointments in this area are displayed with a fixed height (unless __AutoSizeAppointments__ is enabled). When the total height of
          the appointments reaches a certain value, a vertical scrollbar is displayed. Using the properties of the __AllDayHeaderElement__
          you can manipulate the height of the appointments and the maximum height before the scrollbar appears:
        

#### __[C#]__

{{region allDayArea}}
	            dayViewElement.AllDayHeaderElement.HeaderHeight = 50;
	            dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200;
	{{endregion}}



#### __[VB.NET]__

{{region allDayArea}}
	        dayViewElement.AllDayHeaderElement.HeaderHeight = 50
	        dayViewElement.AllDayHeaderElement.MaxHeaderHeight = 200
	        '#End Region
	
	        '#Region resizeColumns
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



## Modifying the size of day view columns

The __SchedulerDayViewElement__ allows you to specify different size for the different columns.
          To manipulate the size of the columns, you can use the __SetColumnWidth__ and __GetColumnWidth__ methods.
          The values passed to the __SetColumnWidth__ method are proportional and the actual width of the columns is calculated based on them.
          By default all columns have a value of 1 and therefore if you set a value of 2 to any column, it will stay twice as bigger compared to the others.
        

#### __[C#]__

{{region resizeColumns}}
	            dayViewElement.SetColumnWidth(2, 2);
	{{endregion}}



#### __[VB.NET]__

{{region resizeColumns}}
	        dayViewElement.SetColumnWidth(2, 2)
	        '#End Region
	    End Sub
	End Class



![scheduler-views-day-view 007](images/scheduler-views-day-view007.png)
