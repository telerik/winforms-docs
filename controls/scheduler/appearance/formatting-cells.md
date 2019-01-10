---
title: Formatting Cells
page_title: Formatting cells | RadScheduler
description: RadScheduler uses a logical layer for storing appointments and view data, and the visual elements that represent this data are occasionally being refreshed.
slug: winforms/scheduler/appearance/formatting-cells
tags: formatting,cells
published: True
position: 1
previous_url: scheduler-appearance-formatting-cells
---

# Formatting cells

__RadScheduler__ uses a logical layer for storing appointments and view data, and the visual elements that represent this data are occasionally being refreshed. Thus, you might lose some of the properties you have set to the visual elements. In order to customize the properties of the cell elements, you should use the __CellFormatting__ event.

This event is fired after a __SchedulerCellElement__ has been created, and when the cell needs to be displayed. The arguments of this event contain a reference to the cell element itself, so you can modify its properties. The samples below demonstrate how you can programmatically change various properties of the __RadScheduler__ cells. Before these samples, we are going to provide some useful information about the __RadScheduler__ cells types.

>caption Figure 1: Visual Elements
![scheduler-views-formatting-cells 001](images/scheduler-views-formatting-cells001.png)

## RadScheduler Data Cells

__RadScheduler__ data cells are of type __SchedulerCellElement__. This type of cell provides several useful properties:

* __Date__: Returns the date of the cell.

* __IsToday__: Indicates whether the date of the cells is today.

* __IsWorkTime__: Gets or sets whether the cell represents a work time slot.

* __IsWholeHour__: Indicates whether the cell represents a whole hour.

## RadScheduler Header Cells

__RadScheduler__ header cells are of type __SchedulerHeaderCellElement__. This type derive from __SchedulerCellElement__, so the properties mentioned above are valid here as well. __SchedulerHeaderCellElement__ exposes one more property  that you may find useful:

* __IsVertical__: Returns whether the cell element is vertical or not.

The interesting fact about __SchedulerHeaderCellElement__ is that cells of this type are used for two different operations. For example, let's get the DayView. You can see that there is a header cell with text for each of the days. The cell below, which allows for hosting all-day appointments, is of type SchedulerHeaderCellElement as well. If you need to programmatically differentiate the first cell from the second, you can do this by the __Parent__ property of the cell. The header cells that contain text are contained by an element of type __DayViewHeader__. The cells that can contain all-day appointments are contained by an element of type __DayViewAllDayHeader__.

>tip Still wondering what type of cell is the cell that you want to format? You can employ[ RadControlSpy]({%slug winforms/tools/controlspy%}) for this task.
>

## Formatting Data Cells

Let's now format some data cells. We will make red the SchedulerCellElements that represent a specific day, for example Apr 13. Let's note that SchedulerHeaderCellElement derive from SchedulerDataElement, so we need to include an 'if' clause that prevents the header cells from being painted:

#### Data Cells

{{source=..\SamplesCS\Scheduler\Views\FormattingSchedulerCells.cs region=settingRedColor}} 
{{source=..\SamplesVB\Scheduler\Views\FormattingSchedulerCells.vb region=settingRedColor}} 

````C#
void radScheduler1_CellFormatting1(object sender, Telerik.WinControls.UI.SchedulerCellEventArgs e)
{
    if (e.CellElement.Date.Month == 4 && e.CellElement.Date.Day == 13)
    {
        if (!(e.CellElement is SchedulerHeaderCellElement))
        {
            e.CellElement.BackColor = Color.Red;
        }                
    }
}

````
````VB.NET
Private Sub radScheduler1_CellFormatting1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.SchedulerCellEventArgs)
    If e.CellElement.Date.Month = 4 AndAlso e.CellElement.Date.Day = 13 Then
        If Not (TypeOf e.CellElement Is SchedulerHeaderCellElement) Then
            e.CellElement.BackColor = Color.Red
        End If
    End If
End Sub

````

{{endregion}}

We have the desired result. The data cells of April 13 are red.

>caption Figure 2: Formatted Cells
![scheduler-views-formatting-cells 002](images/scheduler-views-formatting-cells002.png)

However, what will happen if we navigate left or right in order to see the next/previous days of the  days that are currently into view? Here is the result. 

>caption Figure 3: Formatting Incorrect Result
![scheduler-views-formatting-cells 003](images/scheduler-views-formatting-cells003.png)

As you can see, undesired cells become red as well. RadScheduler is using elements recycling which means that the elements are reused and this is why other cells appear red also. To avoid this you should add an 'else' clause that will reset the BackColor property:

#### Reset Loaclly Set Values

{{source=..\SamplesCS\Scheduler\Views\FormattingSchedulerCells.cs region=resettingRedColor}} 
{{source=..\SamplesVB\Scheduler\Views\FormattingSchedulerCells.vb region=resettingRedColor}} 

````C#
void radScheduler1_CellFormatting2(object sender, Telerik.WinControls.UI.SchedulerCellEventArgs e)
{
    if (e.CellElement.Date.Month == 4 && e.CellElement.Date.Day == 13)
    {
        if (!(e.CellElement is SchedulerHeaderCellElement))
        {
            e.CellElement.BackColor = Color.Red;
        }    
    }
    else
    {
        if (!(e.CellElement is SchedulerHeaderCellElement))
        {
            e.CellElement.ResetValue(VisualElement.BackColorProperty, ValueResetFlags.Local);
        }
    }
}

````
````VB.NET
Private Sub radScheduler1_CellFormatting2(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.SchedulerCellEventArgs)
    If e.CellElement.Date.Month = 4 AndAlso e.CellElement.Date.Day = 13 Then
        If Not (TypeOf e.CellElement Is SchedulerHeaderCellElement) Then
            e.CellElement.BackColor = Color.Red
        End If
    Else
        If Not (TypeOf e.CellElement Is SchedulerHeaderCellElement) Then
            e.CellElement.ResetValue(VisualElement.BackColorProperty, ValueResetFlags.Local)
        End If
    End If
End Sub

````

{{endregion}}

As you can see in the screenshot below, the styling is now correct, because if the red cells now represent a day different from April 13, the red color is removed.

>caption Figure 4: Formatting Correct Result
![scheduler-views-formatting-cells 004](images/scheduler-views-formatting-cells004.png)

## Formatting Header Cells.

We are going to make the header cells that displays the text orange, while the header cell that contains all-day appointment will become dark red:

#### Header Cells.

{{source=..\SamplesCS\Scheduler\Views\FormattingSchedulerCells.cs region=headerCellFormatting}} 
{{source=..\SamplesVB\Scheduler\Views\FormattingSchedulerCells.vb region=headerCellFormatting}} 

````C#
void radScheduler1_CellFormatting3(object sender, Telerik.WinControls.UI.SchedulerCellEventArgs e)
{
    if (e.CellElement is SchedulerHeaderCellElement)
    {
        if (e.CellElement.Date.Month == DateTime.Now.Month && e.CellElement.Date.Day == DateTime.Now.Day)
        {
            if (e.CellElement.Parent is DayViewHeader)
            {
                e.CellElement.Text = "Birthday!";
                e.CellElement.BackColor = Color.Yellow;
                e.CellElement.GradientStyle = GradientStyles.Solid;
                e.CellElement.DrawFill = true;
            }
            else if (e.CellElement.Parent is DayViewAllDayHeader && e.CellElement.Text != "Local")
            {
                e.CellElement.DrawFill = true;
                e.CellElement.BackColor = Color.DarkRed;
            }
            else
            {
                e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local);
                e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local);
                e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local);
            }
        }
        else
        {
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local);
        }
    }
}

````
````VB.NET
Private Sub radScheduler1_CellFormatting3(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.SchedulerCellEventArgs)
    If TypeOf e.CellElement Is SchedulerHeaderCellElement Then
        If e.CellElement.[Date].Month = DateTime.Now.Month AndAlso e.CellElement.[Date].Day = DateTime.Now.Day Then
            If TypeOf e.CellElement.Parent Is DayViewHeader Then
                e.CellElement.Text = "Birthday!"
                e.CellElement.BackColor = Color.Yellow
                e.CellElement.GradientStyle = GradientStyles.Solid
                e.CellElement.DrawFill = True
            ElseIf TypeOf e.CellElement.Parent Is DayViewAllDayHeader AndAlso e.CellElement.Text <> "Local" Then
                e.CellElement.DrawFill = True
                e.CellElement.BackColor = Color.DarkRed
            Else
                e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
                e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local)
                e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
            End If
        Else
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
        End If
    End If
End Sub

````

{{endregion}}

The result of the code snippet above is shown below:
>caption Figure 5: Formatted Header Cells
![scheduler-views-formatting-cells 005](images/scheduler-views-formatting-cells005.png)

# See Also

* [Visual Style Builder]({%slug winforms/themes/visual-style-builder%})
* [Using Default Themes]({%slug winforms/themes/using-default-themes%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})