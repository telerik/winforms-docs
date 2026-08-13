---
title: Display a calendar in a CommandBarDropDownButton
page_title: Display a Calendar in a CommandBarDropDownButton - WinForms CommandBar
description: Learn how to display a RadCalendar in a CommandBarDropDownButton dropdown.
slug: winforms/commandbar/how-to/display-calendar-in-dropdown-button
tags: commandbar,calendar,dropdown
published: True
position: 4
---

# Display a calendar in a CommandBarDropDownButton

Use a __RadMenuHostItem__ to add a __RadCalendar__ control to the dropdown menu of a __CommandBarDropDownButton__. Set the calendar minimum size before adding it so the dropdown menu can measure the hosted control.

## Adding a calendar to the dropdown

The following example creates a calendar, hosts it in a menu item, and adds the item to a command bar dropdown button.

```csharp
RadCalendar calendar = new RadCalendar
{
    MinimumSize = new Size(250, 200)
};

RadMenuHostItem calendarItem = new RadMenuHostItem(calendar);
CommandBarDropDownButton calendarButton = new CommandBarDropDownButton
{
    Text = "Calendar"
};

calendarButton.Items.Add(calendarItem);
commandBarStripElement.Items.Add(calendarButton);
```

The __RadCalendar__ is displayed when the user clicks the dropdown arrow on the __CommandBarDropDownButton__. Use the calendar properties and events to configure or respond to date selection.

## See Also

* [CommandBar Structure]({%slug winforms/commandbar/structure%})
* [Calendar Properties and Events]({%slug winforms/calendar/important-events%})