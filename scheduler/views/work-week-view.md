---
title: Work Week View
page_title: Work Week View
description: Work Week View
slug: scheduler-views-work-week-view
tags: work,week,view
published: True
position: 7
---

# Work Week View



## Work Week View Overview

The Work Week View is a special case of the WeekView, where the
          __ShowWeekend__ property is by default set to
          __false__.
        

![scheduler-views-work-week-view 001](images/scheduler-views-work-week-view001.png)

## Setting the Work Week View

The Week View can be set it to be the default view which the user sees:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=activeViewType}}
	            this.radScheduler1.ActiveViewType = Telerik.WinControls.UI.SchedulerViewType.WorkWeek;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=activeViewType}}
	        Me.RadScheduler1.ActiveViewType = Telerik.WinControls.UI.SchedulerViewType.WorkWeek
	{{endregion}}



## Getting Work Week View

To get the instance to the SchedulerWeekView from the RadScheduler object,either:

* use the __GetDayView__ method:
            

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=getWeekView}}
	            SchedulerWeekView weekView = this.radScheduler1.GetWeekView();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=getWeekView}}
	        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
	{{endregion}}



>This method
                returns null if the active view of the scheduler is not
                SchedulerWeekView.
              

* use the the RadScheduler __ActiveView__ property:
               
            

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=getWeekView}}
	            SchedulerWeekView weekView = this.radScheduler1.GetWeekView();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=getWeekView}}
	        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
	{{endregion}}



# See Also

 * [Day View]({%slug scheduler-views-day-view%})
