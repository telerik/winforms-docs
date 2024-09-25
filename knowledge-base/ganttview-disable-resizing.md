---
title: Disabling Task Resizing in RadGanttView for WinForms
description: Learn how to disable the resizing of tasks in RadGanttView while still allowing drag and drop operations.
type: how-to
page_title: How to Disable Resizing of Tasks in RadGanttView for WinForms
slug: ganttview-disable-resizing
tags: ganttview, winforms, resize, dragdrop, custom behavior
res_type: kb
ticketid: 1550947
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.806|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In some scenarios, you might want to prevent users from resizing tasks in the RadGanttView component but still allow them to move tasks to a different time. This KB article details how to disable only the resizing functionality of tasks in RadGanttView, ensuring users cannot alter the task duration but can move them.

## Solution

To achieve the desired behavior, you can create a custom `GanttViewBehavior` and override the `ProcessMouseMoveWhenResizingTask()` method. By not calling the base implementation of this method, you effectively prevent the task resizing action. However, other functionalities, such as drag and drop of tasks, remain unaffected. Follow the steps below to implement the custom behavior:

Here is the implementation of the custom `GanttViewBehavior`:

````C#
public class CustomGanttViewBehavior: BaseGanttViewBehavior
{
    protected override void ProcessMouseMoveWhenResizingTask(GanttGraphicalViewBaseTaskElement element, MouseEventArgs e)
    {
        // Prevent the base logic from executing to disable resizing
        // base.ProcessMouseMoveWhenResizingTask(element, e);
    }
}

````

To apply this custom behavior to your RadGanttView, set the `GanttViewElement.GanttViewBehavior` property to an instance of your custom behavior class:

````C#
SGanttView.GanttViewElement.GanttViewBehavior = new CustomGanttViewBehavior();

````
What's left is to change the cursor to its default look when the mouse is over the edge of the item. This can be done in the __CursorChanged__ event handler of the control:

````C#
private void radGanttView1_CursorChanged(object sender, EventArgs e)
{
    if (this.radGanttView1.Cursor == Cursors.SizeWE)
    {
        this.radGanttView1.Cursor = Cursors.Default;
    }
}

````

By applying this solution, users will be able to move tasks without being able to resize them, ensuring the tasks' duration remains unchanged.

## See Also

- [RadGanttView Input Behavior Documentation](https://docs.telerik.com/devtools/winforms/controls/ganttview/input-behavior)
- [RadGanttView Overview](https://docs.telerik.com/devtools/winforms/controls/ganttview/overview)
