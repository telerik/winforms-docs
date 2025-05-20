---
title: Highlight the Last Selected Menu Item In RadMenu 
description: Learn how to keep selected menu items highlighted in RadMenu for WinForms by implementing custom code.
type: how-to
page_title: Highlighting Selected Menu Items in RadMenu for WinForms
slug: menu-highlight-last-click-item
tags: menus, winforms, menu-item, highlight
res_type: kb
ticketid: 1687046
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadMenu for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

A common requirement is to highlight the last selected RadMenuItem. This article will demonstrate how this can be achieved.

## Solution

RadMenu for WinForms does not support this behavior out of the box. To achieve it, use custom code to manage the highlighting of the menu items. Subscribe to the `Click` event of each `RadMenuItem` and implement logic to change the `BackColor` property of the clicked item while resetting the previous item's background.

### Example Code

Below is a code example demonstrating the custom solution:

````C#

public partial class Form2 : Form
{
    public Form2()
    {
        InitializeComponent();
        DesertTheme desertTheme = new DesertTheme();
        ThemeResolutionService.ApplicationThemeName = desertTheme.ThemeName;
        foreach (RadMenuItem item in this.radMenu1.Items)
        {
            item.Click += RadMenuItem_Click;
            foreach (RadMenuItem subItem in item.Items)
            {
                subItem.Click += RadMenuItem_Click;
            }
        }
    }
    RadMenuItem lastSelectedMenuItem = null;
    RadMenuItem lastSelectedSubMenuItem = null;

    void ResetColor(RadMenuItem radMenuItem)
    {
        if (radMenuItem != null)
        {
            radMenuItem.FillPrimitive.BackColor = Color.Transparent;
            radMenuItem.FillPrimitive.GradientStyle = GradientStyles.Linear;
        }
    }

    void ResetColor(RadMenuItem radMenuItem)
{
    if (radMenuItem != null)
    {
        radMenuItem.FillPrimitive.ResetValue(Telerik.WinControls.Primitives.FillPrimitive.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
        radMenuItem.FillPrimitive.ResetValue(Telerik.WinControls.Primitives.FillPrimitive.GradientStyleProperty, Telerik.WinControls.ValueResetFlags.Local);
    }
}

    private void RadMenuItem_Click(object sender, EventArgs e)
    {
        var newSelectedMenuItem = sender as RadMenuItem;

        if (newSelectedMenuItem != null)
        {
            if (lastSelectedMenuItem == null)
            {
                lastSelectedMenuItem = newSelectedMenuItem;
                ChangeColor(lastSelectedMenuItem);
            }
            else
            {
                var text1 = this.lastSelectedMenuItem.Text;
                var text2 = newSelectedMenuItem.Text;

                if (newSelectedMenuItem.HierarchyParent is RadMenuItem parentMenuItem)
                {
                    if (lastSelectedSubMenuItem != newSelectedMenuItem)
                    {
                        ResetColor(lastSelectedSubMenuItem);
                    }
                    lastSelectedSubMenuItem = newSelectedMenuItem;
                    ChangeColor(lastSelectedSubMenuItem);

                    if (lastSelectedMenuItem != null)
                    {
                        ResetColor(lastSelectedMenuItem);
                    }

                    lastSelectedMenuItem = parentMenuItem;
                    ChangeColor(parentMenuItem);

                }
                else
                {
                    if (lastSelectedMenuItem == newSelectedMenuItem)
                    {
                        return;
                    }
                    if (lastSelectedSubMenuItem != null)
                    {
                        ResetColor(lastSelectedSubMenuItem);
                    }

                    ResetColor(lastSelectedMenuItem);

                    lastSelectedMenuItem = newSelectedMenuItem;
                    ChangeColor(newSelectedMenuItem);
                }                    
            }
        }
    }
}

````

### Notes

- The code supports one level of subitems. For deeper hierarchies, extend the logic to support multiple levels of hierarchy.

## See Also

- [RadMenu Documentation](https://docs.telerik.com/devtools/winforms/controls/menus/menu/overview)