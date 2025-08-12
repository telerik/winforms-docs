---
title: Adjusting Mouse Wheel Scroll Step in SyntaxEditor for UI for WinForms
description: Learn how to customize the mouse wheel scroll step in the RadSyntaxEditor control.
type: how-to
page_title: Customize Mouse Wheel Scrolling Speed/Step in RadSyntaxEditor
meta_title: Customize Mouse Wheel Scrolling Speed/Step in RadSyntaxEditor
slug: syntaxeditor-mouse-wheel-step
tags: syntaxeditor, scrolling, mouse-wheel, customization
res_type: kb
ticketid: 1561729
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

There could be a scenario in which the mouse wheel speed needs to be per user preferences. However, the control does not provide a way to manipulate the scroll step. In this KB article, we will demonstrate how, using custom code, we could manipulate the scroll speed.

## Solution

To adjust the mouse wheel scroll step, create a custom class that inherits from RadSyntaxEditor and override the `OnMouseWheel` method. Modify the `Value` property of the `VerticalScrollBarElement` and the `VerticalScrollOffset` of the `SyntaxEditorPresenter`. The last step is to set the `VerticalScrollOffset` property. This property is not public and we will need to use reflection to set it. Below is a sample implementation:

````C#

public class MySyntax : RadSyntaxEditor
{
    protected override void CreateChildItems(RadElement parent)
    {
        base.CreateChildItems(parent);
    }

    protected override void OnMouseWheel(MouseEventArgs e)
    {
        // Access and update scrolling properties
        System.Reflection.PropertyInfo pi = typeof(SyntaxEditorPresenter).GetProperty(
            "VerticalScrollOffset", 
            System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.Public
        );

        if (e.Delta < 0) // Scroll down
        {
            this.SyntaxEditorElement.VerticalScrollBar.Value += this.SyntaxEditorElement.VerticalScrollBar.SmallChange;
            pi.SetValue(this.SyntaxEditorElement.EditorPresenter, this.SyntaxEditorElement.VerticalScrollBar.Value);
        }
        else // Scroll up
        {
            this.SyntaxEditorElement.VerticalScrollBar.Value -= this.SyntaxEditorElement.VerticalScrollBar.SmallChange;
            pi.SetValue(this.SyntaxEditorElement.EditorPresenter, this.SyntaxEditorElement.VerticalScrollBar.Value);
        }

        this.SyntaxEditorElement.EditorPresenter.InvalidateLayout(false);
    }
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadSyntaxEditor).FullName;
        }
    }
}

````

### Steps:

1. Create a new class that inherits `RadSyntaxEditor`.  
2. Override the `OnMouseWheel` method.  
3. Use reflection to access and modify the `VerticalScrollOffset` property of `SyntaxEditorPresenter`.  
4. Update the `Value` property of `VerticalScrollBarElement` based on the mouse wheel scroll direction.  
5. Test the custom implementation by adding it to your application.

## See Also
* [RadSyntaxEditor Documentation](https://docs.telerik.com/devtools/winforms/controls/syntaxeditor/overview)
