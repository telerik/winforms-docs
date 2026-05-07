---
title: Modify Size of Rows, Columns and Resources
page_title: Modify Size of Rows, Columns and Resources - RadScheduler
description: RadScheduler allows you to customize the size of the rows and the columns of the views where this is applicable.
slug: winforms/scheduler/appearance/modify-size-of-rows,-columns-and-resources
tags: modify,size,of,rows,,columns,and,resources
published: True
position: 3
previous_url: scheduler-appearance-modify-size-of-rows-columns-and-resources
---

# Modify Size of Rows, Columns and Resources

__RadScheduler__  allows you to customize the size of the rows and the columns of the views where this is applicable. Below you can see how to customize each of the available views:

## DayView, WeekView and WorkWeekView

>caption Figure 1: Equal Column Width
![WinForms RadScheduler Equal Column Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources001.png)

On the day view you can resize the columns which represent a given day (16 Friday, 17 Saturday, 18 Sunday on the figure above).

Here is how you can make the middle columns three times bigger:

#### Resize Column

<snippet id='scheduler-modifysizeofrowscolumnsandresources-dayview-cs' />
<snippet id='scheduler-modifysizeofrowscolumnsandresources-dayview-vb' />



>important The actual width of a column will be calculated proportionally according to the values other columns have. The default value of each column is 1. This means that setting a value of 2 for a given column will make it twice as large compared to other columns.

>caption Figure 2:Increased Column Width
![WinForms RadScheduler Increased Column Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources002.png)

## MonthView

>caption Figure 3: Equal Width
![WinForms RadScheduler Equal Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources003.png)

In month view both rows and columns are resizable. The rows on the screenshots are May 11-17, May 18-24, May 25-31 and  the columns are May 11, 12, 13 ,14 ,15 ,16 ,17 for the first row and 18, 19 and so on for the second row.
The approach for this view is similar:

#### Resize Column

<snippet id='scheduler-modifysizeofrowscolumnsandresources-monthview-cs' />
<snippet id='scheduler-modifysizeofrowscolumnsandresources-monthview-vb' />



>caption Figure 4: Increased Column Width
![WinForms RadScheduler Increased Column Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources004.png)

## TimelineView

>caption Figure 5: Equal Width
![WinForms RadScheduler Equal Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources005.png)

Here we see the columns named as 19-25 may. The same approach can be applied here as well:

#### Resize Column

<snippet id='scheduler-modifysizeofrowscolumnsandresources-timelineview-cs' />
<snippet id='scheduler-modifysizeofrowscolumnsandresources-timelineview-vb' />



>caption Figure 6: Increased Column Width
![WinForms RadScheduler Increased Column Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources006.png)

## ResourceView

>caption Figure 7: Equal Width
![WinForms RadScheduler Equal Width](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources007.png)

Here we see the resources - *"Conference Room 112/113"*. Resizing them can happen as follows:

#### Resize Resource

<snippet id='scheduler-modifysizeofrowscolumnsandresources-resourceview-cs' />
<snippet id='scheduler-modifysizeofrowscolumnsandresources-resourceview-vb' />



>caption Figure 8: Increased Resource Size 
![WinForms RadScheduler Increased Resource Size](images/scheduler-appearance-modifying-size-of-rows-columns-and-resources008.png)

# See Also

* [Visual Style Builder]({%slug winforms/themes/visual-style-builder%})
* [Using Default Themes]({%slug winforms/themes/using-default-themes%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
