---
title: Work Week View
page_title: Work Week View | UI for WinForms Documentation
description: Work Week View
slug: winforms/scheduler/views/work-week-view
tags: work,week,view
published: True
position: 7
---

# Work Week View



## Work Week View Overview

The Work Week View is a special case of the WeekView, where the
          __ShowWeekend__ property is by default set to
          __false__.
        
>caption 

![scheduler-views-work-week-view 001](images/scheduler-views-work-week-view001.png)

## Setting the Work Week View

The Week View can be set it to be the default view which the user sees:#_[C#]_

	



{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=activeViewType}} 
{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=activeViewType}} 

````C#
            this.radScheduler1.ActiveViewType = Telerik.WinControls.UI.SchedulerViewType.WorkWeek;
````
````VB.NET
        Me.RadScheduler1.ActiveViewType = Telerik.WinControls.UI.SchedulerViewType.WorkWeek
        '
````

{{endregion}} 




## Getting Work Week View

To get the instance to the SchedulerWeekView from the RadScheduler object,either:

* use the __GetDayView__ method:
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=getWeekView}} 
{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=getWeekView}} 

````C#
            SchedulerWeekView weekView = this.radScheduler1.GetWeekView();
````
````VB.NET
        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
        '
````

{{endregion}} 




>note This method
                returns null if the active view of the scheduler is not
                SchedulerWeekView.
>


* use the the RadScheduler __ActiveView__ property:
               
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Views\WorkWeekView.cs region=getWeekView}} 
{{source=..\SamplesVB\Scheduler\Views\WorkWeekView.vb region=getWeekView}} 

````C#
            SchedulerWeekView weekView = this.radScheduler1.GetWeekView();
````
````VB.NET
        Dim weekView As SchedulerWeekView = Me.RadScheduler1.GetWeekView()
        '
````

{{endregion}} 




# See Also

 * [Day View]({%slug winforms/scheduler/views/day-view%})
