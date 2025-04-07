---
title: Capturing Tab Keypress in RadTreeView for WinForms
description: Learn how to capture the Tab keypress event in RadTreeView for WinForms by overriding the IsInputKey method.
type: how-to
page_title: How to Capture Tab Key Press in RadTreeView for WinForms
slug: capture-tab-keypress-radtreeview-winforms
tags: radtreeview, winforms, keypress, tab, override, isinputkey
res_type: kb
ticketid: 1176748
---

## Description
When a node is selected in the RadTreeView control and the Tab key is pressed, it doesn't seem to fire any of the keypress style events (down/press/up). This knowledge base article demonstrates how to capture the Tab keypress in the RadTreeView for WinForms. 

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadTreeView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Solution
To handle the Tab keypress in RadTreeView, create a custom class that inherits from `RadTreeView` and override the `IsInputKey` method. This method checks if the pressed key is the Tab key and allows you to perform a specific action if it is.

Here is an example of how to implement this:

````C#
class MyTreeView : RadTreeView
{
    public override string ThemeClassName
    {
        get { return typeof(RadTreeView).FullName; }
    }
    protected override bool IsInputKey(Keys keyData)
    {
        if (keyData == Keys.Tab)
        {
            // Perform specific action
            return true;
        }
  
        return base.IsInputKey(keyData);
    }
}
````

This solution is valid for controls that do not have explicit handling of the Tab key internally and for standard .NET controls as well.

## See Also
- [RadTreeView Overview](https://docs.telerik.com/devtools/winforms/controls/treeview/overview)
