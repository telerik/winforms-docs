---
title: Preventing Scrollbars from Moving When Clicking on the ScrollablePanel
description: Learn how to stop the automatic scrolling behavior of RadScrollablePanel to the focussed control inside.
type: how-to
page_title: How to Stop Scrollbars from Moving in RadDock for WinForms Windows
slug: scrollablepanel-prevent-scrollbars-moving
tags: panelsandlabels, scrollbar, auto-scroll, custom-class
res_type: kb
ticketid: 1663867
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.806|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description
When clicking on the content of the RadScrollablePanel, the scrollbars automatically move to make the focused control visible. This behavior is due to the `RadScrollablePanel` automatically scrolling to the active control. The goal is to disable this automatic scrolling behavior so that the scrollbars do not move when a window is clicked.

## Solution
To prevent the scrollbars from moving when clicking on a window, you need to override the `ScrollToControl` method of the `RadScrollablePanelContainer`. This involves creating a custom class that derives from `RadScrollablePanelContainer` and then using this custom container in your `RadScrollablePanel`.

First, create a custom `RadScrollablePanelContainer`:

````C#
public class MyRadScrollableContainer : RadScrollablePanelContainer
{
    private RadScrollablePanel myParentPanel;

    public MyRadScrollableContainer() : base(null)
    {
    }

    public MyRadScrollableContainer(RadScrollablePanel parentPanel) : base(parentPanel) 
    {
        this.DoubleBuffered = true;
        this.SetStyle(ControlStyles.Selectable, true);
        this.myParentPanel = parentPanel;
    }

    protected override Point ScrollToControl(Control activeControl)
    {
        Point result = Point.Empty;
        if (myParentPanel != null)
        {
            result = new Point(-this.myParentPanel.HorizontalScrollbar.Value, -this.myParentPanel.VerticalScrollbar.Value);
        }
        return result;
    }
}

````

Then, create a custom `RadScrollablePanel` that uses your custom container:

````C#
public class CustomRadScrollablePanel : RadScrollablePanel
{
    protected override RadScrollablePanelContainer CreateScrollablePanelContainer()
    {
        return new MyRadScrollableContainer(this);
    }

    public override string ThemeClassName
    {
        get
        {
            return typeof(RadScrollablePanel).FullName;
        }
    }
}

````

Finally, replace the default `RadScrollablePanel` with your custom version in the applicable part of your application, such as the `OnWindowCreate()` method.

By implementing this custom container, you disable the default behavior that automatically scrolls to the active control, thus preventing the scrollbars from moving when a window is clicked.

## See Also
- [RadDock Overview](https://docs.telerik.com/devtools/winforms/controls/dock/overview)
- [Customizing RadScrollablePanel Behavior](https://docs.telerik.com/devtools/winforms/controls/panels/scrollable-panel/customizing-behavior)
