---
title: Themes
page_title: Styling | UI for WinForms Documentation
description: The following article shows how you can change calendar cells in Visual Style Builder.
slug: winforms/calendar/customizing-appearance/styling
tags: styling, themes
published: True
position: 0
previous_url: calendar-customizing-appearance-styling
---

# Styling in Visual Style Builder

The following article shows how you can change the calendar cells styles in [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}). The `CalendarTableElement` corresponds to a single month view in __RadCalendar__. The `CalendarTableElement` is the container of __RadCalendar__ cells that represent the days of the month. 


### Changing the Today cell styles in Visual Style Builder

1. Open [VisualStyleBuilder]({%slug winforms/tools/visual-style-builder%}).
2. Export the built-in themes in a specific folder by selecting `File >> Export Built-in Themes`.
3. Load a desired theme from the just exported files by selecting `File >> Open Package`.
4. Select __RadCalendar__ and expand the elements up to `CalendarCellElement`.
   ![calendar-themes001](images/calendar-themes001.png)
5. Select the `Today` state in the `Element States` window.Then open `CalCellTodayFill` repository item.
   ![calendar-themes002](images/calendar-themes002.png)
6. Once the item is opened change the BackColor and close the item.
   ![calendar-themes003](images/calendar-themes003.png)
7. In the `Elements` window select the Font and change its style and sizе.
   ![calendar-themes004](images/calendar-themes004.png)


### Common Styling Properties

You can use this approach to customize all other states styles. The following list shows some of the most important properties that can be changed:

1. __BackColor__ - Gets or sets the back color which will be used in the gradient fill. 


1. __BackColor2__ - Gets or sets the second back color which will be used in the gradient fill. 


1. __BackColor3__ - Gets or sets the third back color which will be used in the gradient fill. 


1. __BackColor4__ - Gets or sets the fourth back color which will be used in the gradient fill. 


1. __NumberOfColors__ - Gets or sets the number of back colors which will take effect in the gradient fill. 


1. __GradientStyles__ - Gets or sets the gradient style which will be used in the gradient fill. 


1. __BorderBoxStyle__ -  Gets or sets the type of border for the visual element. 


1. __BorderColor__ -  Gets or sets the border color. 


1. __BorderColor2__ - Gets or sets the second border color. 


1. __BorderColor3__ - Gets or sets the third border color. 


1. __BorderColor4__ - Gets or sets the fourth border color. 


1. __BorderWidth__ - Gets or sets the width of the visual element's border 


1. __DrawFill__ - Gets or sets whether the gradient fill of the visual element should be drawn. 


1. __DrawBorder__ - Gets or sets whether the border of the visual element should be drawn. 


1. __BorderGradientStyle__ - Gets or sets the border gradient style.

### Supported States 

Each day is represented by an instance of __CalendarCellElement__. The logical states of the day are embodied in the __CalendarCellElement__ properties shown below. 

1. __WeekEnd -__ Indicates that the visual element is representing a week end day. 

1. __OtherMonth -__  Indicates that the visual element is representing a day from another month. 


1. __Selected -__ Indicates whether the current visual element is selected 


1. __Today -__ Indicates whether the visual element is representing the current day. 


1. __Focused -__ Indicates whether the visual element is focused. 


1. __IsZooming -__ Indicates whether the visual element is in zoom-mode. 


1. __IsHeader -__ Indicates whether the visual element is representing a header cell. 


1. __SpecialDay -__ Indicates whether the visual element is representing a special day. 


1. __OutOfRange -__ Indicates whether the visual element is representing a day which is out of the specified range.
 
