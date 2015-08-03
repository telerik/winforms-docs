---
title: SchedulerPrintStyles
page_title: SchedulerPrintStyles | UI for WinForms Documentation
description: SchedulerPrintStyles
slug: winforms/scheduler/print-support/schedulerprintstyles
tags: schedulerprintstyles
published: True
position: 1
---

# SchedulerPrintStyles



Printing in RadScheduler is performed by objects of type __SchedulerPrintStyle__.
        SchedulerPrintStyle provides a set of options that define the date range of printing
        and the appearance of the printed pages.
      

SchedulerPrintStyle is an abstract class and cannot be instantiated directly.
        You should use one of the following implementations: __SchedulerDailyPrintStyle__,
        __SchedulerWeeklyPrintStyle__, __SchedulerMonthlyPrintStyle__,
        __SchedulerDetailsPrintStyle__.
      

To set a RadScheduler with a print style:#_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=SetPrintStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=SetPrintStyle}} 

````C#
            SchedulerPrintStyle schedulerPrintStyle = new SchedulerDailyPrintStyle();
            this.radScheduler1.PrintStyle = schedulerPrintStyle;
````
````VB.NET
        Dim schedulerPrintStyle As New SchedulerDailyPrintStyle()
        Me.RadScheduler1.PrintStyle = schedulerPrintStyle
        '
````

{{endregion}} 




SchedulerPrintStyle has the following properties:

* __DateStartRange__ and __DateEndRange__ - allows
            you to specify the date range which should be printed:
          #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=SpeficyDateRange}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=SpeficyDateRange}} 

````C#
            schedulerPrintStyle.DateStartRange = DateTime.Today;
            schedulerPrintStyle.DateEndRange = DateTime.Today.AddDays(6);
````
````VB.NET
        schedulerPrintStyle.DateStartRange = DateTime.Today
        schedulerPrintStyle.DateEndRange = DateTime.Today.AddDays(6)
        '
````

{{endregion}} 




* __TimeStartRange__ and __TimeEndRange__ - allows
            you to specify the time frame which for every day in the date range - i.e. the time frame which will be
            printed for each date in the date range period:
          #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=SpecifyTimeFrame}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=SpecifyTimeFrame}} 

````C#
            schedulerPrintStyle.TimeStartRange = TimeSpan.FromHours(7);
            schedulerPrintStyle.TimeEndRange = TimeSpan.FromHours(19);
````
````VB.NET
        schedulerPrintStyle.TimeStartRange = TimeSpan.FromHours(7)
        schedulerPrintStyle.TimeEndRange = TimeSpan.FromHours(19)
        '
````

{{endregion}} 




* AppointmentFont, DateHeadingFont and PageHeadingFont allow you to specify the fonts for the appointments,
            dates and page headers respectively:
          #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=SetFonts}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=SetFonts}} 

````C#
            schedulerPrintStyle.AppointmentFont = new Font("Segoe UI Light", 8, FontStyle.Regular);
            schedulerPrintStyle.DateHeadingFont = new Font("Segoe UI Light", 12, FontStyle.Regular);
            schedulerPrintStyle.PageHeadingFont = new Font("Segoe UI Light", 16, FontStyle.Regular);
````
````VB.NET
        schedulerPrintStyle.AppointmentFont = New Font("Segoe UI Light", 8, FontStyle.Regular)
        schedulerPrintStyle.DateHeadingFont = New Font("Segoe UI Light", 12, FontStyle.Regular)
        schedulerPrintStyle.PageHeadingFont = New Font("Segoe UI Light", 16, FontStyle.Regular)
        '
````

{{endregion}} 




* You can also specify which __visual parts__ of the page to be printed - page title, calendar in the
            page title, notes area, etc:
          #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=SpeficyVisualElements}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=SpeficyVisualElements}} 

````C#
            schedulerPrintStyle.DrawPageTitle = true;
            schedulerPrintStyle.DrawPageTitleCalendar = true;
            schedulerPrintStyle.ShowLinedNotesArea = true;
            schedulerPrintStyle.ShowNotesArea = true;
````
````VB.NET
        schedulerPrintStyle.DrawPageTitle = True
        schedulerPrintStyle.DrawPageTitleCalendar = True
        schedulerPrintStyle.ShowLinedNotesArea = True
        schedulerPrintStyle.ShowNotesArea = True
        '
````

{{endregion}} 




* To modify the size of the visual areas use:
          #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=ModifyVisualElements}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=ModifyVisualElements}} 

````C#
            schedulerPrintStyle.NotesAreaWidth = 200;
            schedulerPrintStyle.HeadingAreaHeight = 100;
````
````VB.NET
        schedulerPrintStyle.NotesAreaWidth = 200
        schedulerPrintStyle.HeadingAreaHeight = 100
        '
````

{{endregion}} 




## DailyStyle![scheduler-print-support-schedulerprintstyle-dailystyle](images/scheduler-print-support-schedulerprintstyle-dailystyle.png)

The SchedulerDailyPrintStyle class defines printing of RadScheduler in a daily manner.
          Each day is displayed on a separate page. The appointments are arranged in a grid similarly
          to the SchedulerDayView. The SchedulerDailyPrintStyle provides properties for changing
          the size of its specific visual parts: the hours column on the left and the area for all
          day appointments. Additionally, you can allow printing two pages per day. The second page in
          the mode is reserved for notes.
        #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=DailyStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=DailyStyle}} 

````C#
            SchedulerDailyPrintStyle dailyStyle = new SchedulerDailyPrintStyle();
            dailyStyle.HoursColumnWidth = 100;
            dailyStyle.MaxAllDayAreaHeight = 100;
            dailyStyle.AllDayAppointmentHeight = 20;
            dailyStyle.TwoPagesPerDay = true;
````
````VB.NET
        Dim dailyStyle As New SchedulerDailyPrintStyle()
        dailyStyle.HoursColumnWidth = 100
        dailyStyle.MaxAllDayAreaHeight = 100
        dailyStyle.AllDayAppointmentHeight = 20
        dailyStyle.TwoPagesPerDay = True
        '
````

{{endregion}} 




## WeeklyCalendarStyle![scheduler-print-support-schedulerprintstyle 001](images/scheduler-print-support-schedulerprintstyle001.png)

In the WeeklyCalendarPrintStyle the appointments are arranged in a grid where each column represents a day. And each row represents a specific time frame.
          This style provides properties for changing the dimensions of its visual parts and the font for the header cells.      
        

* __HeaderCellFont__ - Allows the font of the header row to be changed.
            

* __HeaderAreaHeight__ - Controls the height of the header row.
            

* __HoursColumnWidth__ - Controls the width of the header column.
            

* __AllDayAppointmentHeight__ - Controls the width of the all day appointments section.
            

* __MaxAllDayAreaHeight__ - Sets the maximum height all day appointments section. The default value is 180 pixels.
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=WeeklyCalendarStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=WeeklyCalendarStyle}} 

````C#
            SchedulerWeeklyCalendarPrintStyle weeklyCalendarStyle = new SchedulerWeeklyCalendarPrintStyle();
            weeklyCalendarStyle.AppointmentFont = new System.Drawing.Font("Segoe UI", 12, FontStyle.Regular);
            weeklyCalendarStyle.HeadingAreaHeight = 120;
            weeklyCalendarStyle.HoursColumnWidth = 30;
````
````VB.NET
        Dim weeklyCalendarStyle As New SchedulerWeeklyCalendarPrintStyle()
        weeklyCalendarStyle.AppointmentFont = New System.Drawing.Font("Segoe UI", 12, FontStyle.Regular)
        weeklyCalendarStyle.HeadingAreaHeight = 120
        weeklyCalendarStyle.HoursColumnWidth = 30
        '
````

{{endregion}} 




## WeeklyStyle![scheduler-print-support-schedulerprintstyle-weeklystyle](images/scheduler-print-support-schedulerprintstyle-weeklystyle.png)

The SchedulerWeeklyPrintStyle class defines printing of RadScheduler in a weekly manner.
          Each week is displayed on a separate page. The appointments are arranged in a grid in
          which each cell represents a day of the week. The SchedulerWeeklyPrint provides
          properties for changing the height of the appointments and the layout of its visual parts.
        

* __ExcludeNonWorkingDays__ - disables printing of non-working days
            

* __DaysLayout__ - defines the flow direction of the cells
            

* __TwoPagesPerWeek__ - allows printing a week in two pages separating the week in two
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=WeeklyStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=WeeklyStyle}} 

````C#
            SchedulerWeeklyPrintStyle weeklyStyle = new SchedulerWeeklyPrintStyle();
            weeklyStyle.ExcludeNonWorkingDays = true;
            weeklyStyle.DaysLayout = WeeklyStyleLayout.TopToBottom;
            weeklyStyle.TwoPagesPerWeek = true;
````
````VB.NET
        Dim weeklyStyle As New SchedulerWeeklyPrintStyle()
        weeklyStyle.ExcludeNonWorkingDays = True
        weeklyStyle.DaysLayout = WeeklyStyleLayout.TopToBottom
        weeklyStyle.TwoPagesPerWeek = True
        '
````

{{endregion}} 




## MonthlyStyle![scheduler-print-support-schedulerprintstyle-monthlystyle](images/scheduler-print-support-schedulerprintstyle-monthlystyle.png)

The SchedulerMonthlyPrintStyle class defines printing of RadScheduler in a monthly manner.
          Each month is displayed on a separate page. The appointments are arranged in a grid in
          which each cell represents a day of the month.
        

In this mode you can take advantage of the following properties:

* __ExcludeNonWorkingDays__ - disable printing of non-working days
            

* __TwoPagesPerMonth__ - separate the month in two pages
            

* __PrintExactlyOneMonth__ - prints one month on a page
            

* __WeeksPerPage__ - prints the number of defined weeks on a page
            

* __AppointmentHeight__ - set the appointment height
            

* __VerticalHeaderWidth__ - sets the vertical header width
            

* __CellHeaderHeight__ - sets cell header height
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=MonthlyStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=MonthlyStyle}} 

````C#
            SchedulerMonthlyPrintStyle monthlyStyle = new SchedulerMonthlyPrintStyle();
            monthlyStyle.ExcludeNonWorkingDays = true;
            monthlyStyle.TwoPagesPerMonth = true;
            monthlyStyle.PrintExactlyOneMonth = false;
            monthlyStyle.WeeksPerPage = 4;
            monthlyStyle.AppointmentHeight = 30;
            monthlyStyle.CellHeaderHeight = 30;
            monthlyStyle.VerticalHeaderWidth = 100;
````
````VB.NET
        Dim monthlyStyle As New SchedulerMonthlyPrintStyle()
        monthlyStyle.ExcludeNonWorkingDays = True
        monthlyStyle.TwoPagesPerMonth = True
        monthlyStyle.PrintExactlyOneMonth = False
        monthlyStyle.WeeksPerPage = 4
        monthlyStyle.AppointmentHeight = 30
        monthlyStyle.CellHeaderHeight = 30
        monthlyStyle.VerticalHeaderWidth = 100
        '
````

{{endregion}} 




## DetailsStyle![scheduler-print-support-schedulerprintstyle-detailsstyle](images/scheduler-print-support-schedulerprintstyle-detailsstyle.png)

The SchedulerDetailsPrintStyle defines printing of RadScheduler in a continuous manner.
          Appointments are printed in ascending order of their start date. This mode does not
          provide page headers.
        

Similar to the previous modes, you can set properties that define the size of specific visual parts
          of the page. You can also specify the condition under which the printing should continue on the next
          page. Four page break modes are available:
        

* __Default__ – the printing continues to the next page there is no space left on the current page.
            

* __Day__ – the printing continues to the next page when the next appointment has a different date or there is no space left on the current page.
            

* __Week__ – the printing continues to the next page when the next appointment is in a different week or there is no space left on the current page.
            

* __Month__ – the printing continues to the next page when the next appointment is in a different month or there is no space left on the current page.
            #_[C#]_

	



{{source=..\SamplesCS\Scheduler\Print support\SchedulerPrintStyle1.cs region=DetailsStyle}} 
{{source=..\SamplesVB\Scheduler\Print support\SchedulerPrintStyle1.vb region=DetailsStyle}} 

````C#
            SchedulerDetailsPrintStyle detailsStyle = new SchedulerDetailsPrintStyle();
            detailsStyle.AppointmentDateWidth = 200;
            detailsStyle.AppointmentTitleHeight = 30;
            detailsStyle.DayHeaderHeight = 60;
            detailsStyle.PageBreakMode = PageBreakMode.Day;
````
````VB.NET
        Dim detailsStyle As New SchedulerDetailsPrintStyle()
        detailsStyle.AppointmentDateWidth = 200
        detailsStyle.AppointmentTitleHeight = 30
        detailsStyle.DayHeaderHeight = 60
        detailsStyle.PageBreakMode = PageBreakMode.Day
        '
````

{{endregion}} 



