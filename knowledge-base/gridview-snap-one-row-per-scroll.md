---
title: Forcing RadGridView to Snap One Row During Scrolling
description: Learn how to force RadGridView in UI for WinForms to snap one row per scrolling, including mouse wheel scrolling.
type: how-to
page_title: Ensure RadGridView Scroll Rows One-by-One When Scrolling
meta_title: Ensure RadGridView Scroll Rows One-by-One When Scrolling
slug: gridview-snap-one-row-per-scroll
tags: gridview, ui for winforms, scrolling, mousewheel, scrollmode, row-scrolling
res_type: kb
ticketid: 1702130
---

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadSpreadsheet for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how to snap to row gridlines and display rows one by one during scrolling, especially when using the mouse wheel.

## Solution

To achieve row-by-row scrolling in RadGridView, use discrete scrolling mode and add custom handling for mouse wheel scrolling.

1. Set the scrolling mode to discrete to enable row-by-row scrolling when using the scrollbar. This is further described in the [Scroll Modes](https://docs.telerik.com/devtools/winforms/controls/gridview/features/scrolling/scroll-modes) help article.

````C#

   this.radGridView1.TableElement.RowScroller.ScrollMode = ItemScrollerScrollModes.Discrete;

````

2. To apply the same behavior for mouse wheel scrolling, handle the `MouseWheel` event of RadGridView.

````C#
this.radGridView1.MouseWheel += RadGridView1_MouseWheel;

````

3. Implement the `RadGridView1_MouseWheel` event to calculate new scroll positions based on row height and wheel direction.

````C#

private void RadGridView1_MouseWheel(object sender, MouseEventArgs e)
{
    var grid = sender as RadGridView;
    if (grid == null || grid.RowCount == 0) return;

    // Positive delta = scroll up
    int direction = e.Delta > 0 ? -1 : 1;

    var vScrollBar = grid.TableElement.VScrollBar;

    // Scroll by one row at a time
    int newValue = vScrollBar.Value + (direction * grid.TableElement.RowHeight);
    newValue = Math.Max(vScrollBar.Minimum, Math.Min(vScrollBar.Maximum, newValue));

    if (direction == 1 && this.radGridView1.TableElement.VisualRows.Last().RowInfo == this.radGridView1.Rows.Last())
    {
        // hit last row
    }
    else
    {
        vScrollBar.Value = newValue;
    }            
           
    // Prevent default scrolling
    ((HandledMouseEventArgs)e).Handled = true;
}

````

This configuration ensures RadGridView scrolls one row at a time, maintaining alignment with gridlines for both scrollbar and mouse wheel interactions.

## See Also

* [Scroll Modes Documentation](https://docs.telerik.com/devtools/winforms/controls/gridview/features/scrolling/scroll-modes)
* [RadGridView Overview](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)
