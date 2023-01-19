---
title: How to modify mouse wheel scroll value in RadScheduler's MonthView 
description: This article shows how you can modify mouse wheel scroll value in RadScheduler's MonthView.
type: how-to
page_title: How to modify mouse wheel scroll value in RadScheduler's MonthView 
slug: scheduler-month-week-scroll
position: 0
tags: Scheduler, mouse, wheel, weeks, scroll
ticketid: 1593385
res_type: kb
---


## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.1.117|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

By design, when using the mouse wheel the [Month View]({%slug winforms/scheduler/views/month-view%}) in **RadScheduler** weeks section is scrolled by 1 week. There could be a requirement to change this value by more than 1 week.

## Solution

By default, the [__SchedulerInputBehavior__]({%slug winforms/scheduler/fundamentals/input-behavior%}) is responsible for processing the keyboard and mouse input. In this case, we can create a custom input behavior and override the __HandleMouseWheel()__ method. Inside the method, you can offset the view by 2 weeks instead of 1.


````C#
        
public class MySchedulerInputBehavior : SchedulerInputBehavior
{
    public MySchedulerInputBehavior(RadScheduler scheduler)
        : base(scheduler)
    {
    }
    public override bool HandleMouseWheel(MouseEventArgs args)
    {
        // return base.HandleMouseWheel(args);
        if (args.Delta > 0)
        {
            //this.Scheduler.ViewElement.Scroll(true);
            SchedulerMonthView monthView = this.Scheduler.GetMonthView();
            SchedulerMonthView offsetView = (SchedulerMonthView)monthView.OffsetView(-2);
            monthView.StartDate = offsetView.StartDate;
        }
        else
        {
            //  this.Scheduler.ViewElement.Scroll(false);
            SchedulerMonthView monthView = this.Scheduler.GetMonthView();
            SchedulerMonthView offsetView = (SchedulerMonthView)monthView.OffsetView(2);
            monthView.StartDate = offsetView.StartDate;
        }
        return false;
    }
}

````
````VB.NET

Public Class MySchedulerInputBehavior
    Inherits SchedulerInputBehavior

    Public Sub New(ByVal scheduler As RadScheduler)
        MyBase.New(scheduler)
    End Sub

    Public Overrides Function HandleMouseWheel(ByVal args As MouseEventArgs) As Boolean
        If args.Delta > 0 Then
            Dim monthView As SchedulerMonthView = Me.Scheduler.GetMonthView()
            Dim offsetView As SchedulerMonthView = CType(monthView.OffsetView(-2), SchedulerMonthView)
            monthView.StartDate = offsetView.StartDate
        Else
            Dim monthView As SchedulerMonthView = Me.Scheduler.GetMonthView()
            Dim offsetView As SchedulerMonthView = CType(monthView.OffsetView(2), SchedulerMonthView)
            monthView.StartDate = offsetView.StartDate
        End If

        Return False
    End Function
End Class

````

{{endregion}} 

# See Also

* [RadScheduler]({%slug winforms/scheduler%})
* [Month View]({%slug winforms/scheduler/views/month-view%})




