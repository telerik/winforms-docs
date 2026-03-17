---
title: Enabling 24-Hour Format for Printing in Scheduler for UI for WinForms
description: Learn how to enable the 24-hour format for printing in the Scheduler for UI for WinForms.
type: how-to
page_title: How to Print Scheduler in 24-Hour Format in UI for WinForms
meta_title: Printing Scheduler in 24-Hour Format in UI for WinForms
slug: print-scheduler-24-hour-format-winforms
tags: scheduler, reminder, ui for winforms, datetimeformat, cellprintformatting, printstyle
res_type: kb
ticketid: 1707460
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2026.1.210|RadScheduler for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

The Scheduler displays the 24-hour format in its cells. But the print preview does not. By default, the DateFormat string of the printed cell is set to "hh:mm". That is the 12-hour time format.

## Solution

To enable the 24-hour format in the print document, modify the `DateFormat` property of the `SchedulerPrintCellElement`. Use the `CellPrintElementFormatting` event handler to apply the desired format. 

Here is the code snippet:

```C#
private void RadScheduler1_CellPrintElementFormatting(object sender, PrintSchedulerCellEventArgs e)
{
    e.CellElement.DateFormat = "HH:mm";
}
```

## See Also
* [Print Support](https://www.telerik.com/products/winforms/documentation/controls/scheduler/end-user-functionality/print-support)
