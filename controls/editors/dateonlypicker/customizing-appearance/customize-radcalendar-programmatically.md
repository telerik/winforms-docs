---
title: Customize the Calendar inside RadDateOnlyPicker. 
page_title: Customize the Calendar - RadDateOnlyPicker. 
description: Customize the RadCalendar in the drop down programmatically.
slug: editors-dateonlypicker-customize-calendar-programmatically
tags: customize,radcalendar,programmatically
published: True
position: 1
---

# Customize RadCalendar Programmatically


In order to customize __RadCalendar__ in __RadDateOnlyPicker__, you should first take the instance of the __RadCalendar__. You can do so by calling the __GetCurrentBehavior__() method. For example, if we want to change the font and colors of the __RadCalendar__ navigation title, we need to use the following code snippet:

#### Changing the font of RadCalendar navigation title 
 
{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=customizeRadCalendarProgramatically}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=customizeRadCalendarProgramatically}} 

````C#
Font headerFont = new Font("Arial", 9.0f, FontStyle.Bold);
Font datesFont = new Font("Arial", 9.0f, FontStyle.Italic);
this.radDateOnlyPicker1.CalendarSize = new Size(300,300);
RadDateOnlyPickerCalendar calendarBehavior = this.radDateOnlyPicker1.DateOnlyPickerElement.GetCurrentBehavior() as RadDateOnlyPickerCalendar;
RadCalendar calendar = calendarBehavior.Calendar as RadCalendar;
RadCalendarElement calendarElement = calendar.CalendarElement as RadCalendarElement;
calendarElement.CalendarNavigationElement.Font = headerFont;
calendarElement.CalendarNavigationElement.ForeColor = Color.Green;
calendarElement.CalendarNavigationElement.BackColor = Color.White;
calendarElement.CalendarNavigationElement.BackColor2 = Color.Gray;
calendarElement.CalendarNavigationElement.BackColor3 = Color.DarkGray;
calendarElement.CalendarNavigationElement.BackColor4 = Color.Gainsboro;
calendarElement.CalendarNavigationElement.BorderColor = Color.DarkGray;
MonthViewElement monthView = calendarBehavior.Calendar.CalendarElement.CalendarVisualElement as MonthViewElement;
foreach (RadItem item in monthView.TableElement.Children)
{
    item.Font = datesFont;
}

````
````VB.NET
Dim headerFont As Font = New Font("Arial", 9.0F, FontStyle.Bold)
Dim datesFont As Font = New Font("Arial", 9.0F, FontStyle.Italic)
Me.radDateOnlyPicker1.CalendarSize = New Size(300, 300)
Dim calendarBehavior As RadDateOnlyPickerCalendar = TryCast(Me.radDateOnlyPicker1.DateOnlyPickerElement.GetCurrentBehavior(), RadDateOnlyPickerCalendar)
Dim calendar As RadCalendar = TryCast(calendarBehavior.Calendar, RadCalendar)
Dim calendarElement As RadCalendarElement = TryCast(calendar.CalendarElement, RadCalendarElement)
calendarElement.CalendarNavigationElement.Font = headerFont
calendarElement.CalendarNavigationElement.ForeColor = Color.Green
calendarElement.CalendarNavigationElement.BackColor = Color.White
calendarElement.CalendarNavigationElement.BackColor2 = Color.Gray
calendarElement.CalendarNavigationElement.BackColor3 = Color.DarkGray
calendarElement.CalendarNavigationElement.BackColor4 = Color.Gainsboro
calendarElement.CalendarNavigationElement.BorderColor = Color.DarkGray
Dim monthView As MonthViewElement = TryCast(calendarBehavior.Calendar.CalendarElement.CalendarVisualElement, MonthViewElement)

For Each item As RadItem In monthView.TableElement.Children
	item.Font = datesFont
Next

````

{{endregion}} 
 

>caption Figure 1: The result from the above code:

![WinForms RadDateOnlyPicker Customized Programmatically](images/editors-dateonlypicker-customize-calendar-programmatically001.png)

#### Show Clear and Today Buttons

The Clear and Today buttons of the calendar are located in its footer. The footer of the calendar is hidden in the RadDateOnlyPicker control. To show it, we need to call the  __GetCurrentBehavior__() method to gen an instance of the RadCalendar inside the RadDateOnlyPicker control.


{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=showCalendarFooter}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=showCalendarFooter}} 

````C#
RadDateOnlyPickerCalendar calendarBehavior = this.radDateOnlyPicker1.DateOnlyPickerElement.GetCurrentBehavior() as RadDateOnlyPickerCalendar;
calendarBehavior.Calendar.ShowFooter = true;

````
````VB.NET
Dim calendarBehavior As RadDateOnlyPickerCalendar = TryCast(Me.radDateOnlyPicker1.DateOnlyPickerElement.GetCurrentBehavior(), RadDateOnlyPickerCalendar)
calendarBehavior.Calendar.ShowFooter = True

````

{{endregion}}

![WinForms RadDateOnlyPicker Show Clear Today Buttons](images/editors-dateonlypicker-customize-calendar-programmatically002.png)

## See Also

* [Customizing Appearance]({%slug editors-dateonlypicker-customizing-appearance%})
* [Themes]({%slug editors-dateonlypicker-themes%})
