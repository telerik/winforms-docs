---
title: Preventing Focus on RadGridView in WinForms
description: Learn how to use a custom approach to prevent focus on RadGridView in WinForms.
type: how-to
page_title: How to Stop RadGridView from Receiving Focus in WinForms
slug: gridview-prevent-focus
tags: gridview, winforms, focus, focusable-property, custom-implementation
res_type: kb
ticketid: 745199
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

There could be a requirement to prevent the RadGridView control from receiving focus even when interacting with it via mouse clicks or the Tab key. Setting the Focusable property to false does not fully stop the focus from being set on the grid.

## Solution

To prevent RadGridView from receiving focus, override its focus-related methods and use a custom grid behavior. Follow the steps below:

````C#
public class MyGridView : RadGridView
{
    protected override void OnGotFocus(EventArgs e)
    {
        // Prevent focus from being set
        // base.OnGotFocus(e);
    }

    public override string ThemeClassName
    {
        get
        {
            return typeof(RadGridView).FullName;
        }
    }

    protected override bool ProcessFocusRequested(RadElement element)
    {
        return false; // Prevent focus requests
    }
}

public class MyGridBehavior : BaseGridBehavior
{
    public override bool ProcessKey(KeyEventArgs keys)
    {
        if (keys.KeyCode == Keys.Tab)
        {
            return true; // Prevent focus change via Tab key
        }

        return base.ProcessKey(keys);
    }

    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        return true; // Prevent focus change via mouse click
    }
}


// Usage:
this.radGridView1 = new MyGridView();
this.radGridView1.GridBehavior = new MyGridBehavior();

````

By implementing this code, RadGridView will no longer receive focus through mouse clicks or the Tab key. This approach ensures complete control over the focus behavior of the grid.

## See Also
- [RadGridView Documentation](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)
