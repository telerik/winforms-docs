---
title: Determining Header Cell and its Resource ID in MouseDown Events in RadScheduler
description: Learn how to get the RadScheduler header cell with a mouse click and obtain the resource ID.
type: how-to
page_title: How to get Header Cell and its Resource ID on mouse down in RadScheduler for WinForms
slug: radscheduler-header-cell-click
tags: scheduler, winforms, resource, header, click, right-click, resourceid
res_type: kb
ticketid: 1656837
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.2.514|UI for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

There could be a scenario where you want to get the header cell and its resource ID in the RadScheduler control when the user clicks on it. To achieve this, we can use the MouseDown event of the control. In the event handler, we can use the GetElementAtPoint() method of the ElementTree which will return the click element in the RadScheduler control. We can use this method to obtain other visual elements by a given location.

From the View object of the cell, we can call the GetResource() method to get the corresponding resource and its ID.

## Solution

````C#
SchedulerHeaderCellElement schedulerHeaderCellElement = this.radScheduler1.ElementTree.GetElementAtPoint(e.Location) as SchedulerHeaderCellElement;
if (schedulerHeaderCellElement != null)
{
    if (e.Button == MouseButtons.Left)
    {
        var date = schedulerHeaderCellElement.Date;
        var resource = schedulerHeaderCellElement.View.GetResource();
        var resourceID = schedulerHeaderCellElement.View.GetResourceId();
    }
    else if (e.Button == MouseButtons.Right)
    {
        // Right-click logic can be added here
    }
    return;
}
````

## See Also

- [RadScheduler Overview](https://docs.telerik.com/devtools/winforms/controls/scheduler/overview)
