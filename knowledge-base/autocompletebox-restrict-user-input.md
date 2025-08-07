---
title: Restricting User Typing in RadAutoCompleteBox
description: Learn how to prevent users from typing in the RadAutoCompleteBox in UI for WinForms.
type: how-to
page_title: Prevent User Input in RadAutoCompleteBox in UI for WinForms
meta_title: Prevent User Input in RadAutoCompleteBox in UI for WinForms
slug: autocompletebox-restrict-user-input
tags: editors, autocompletebox,keydown, customization,respect-user-input
res_type: kb
ticketid: 1691827
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In the following scenario, we will demonstrate how to prevent the end user from typing in the control. The user should interact with the control only by clicking an external button (e.g., Attach), which opens a file dialog for selecting files to attach.

## Solution

To disable user input in the RadAutoCompleteBox, you can override its `KeyDown` method by customizing the `RadAutoCompleteBoxElement`. Follow these steps:

1. Create a custom class that inherits from `RadAutoCompleteBox`.
2. Override the `CreateTextBoxElement` method to return the custom `RadAutoCompleteBoxElement`.
3. Inside the custom `RadAutoCompleteBoxElement`, override the `OnKeyDown` method to suppress key presses.

Here is the code implementation:

````C#

public class MyAutoCompleteBoxControl : RadAutoCompleteBox
{
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadAutoCompleteBox).FullName;
        }
    }
    protected override RadTextBoxControlElement CreateTextBoxElement()
    {
        return new MyAutoCompleteBoxElement();
    }
}

public class MyAutoCompleteBoxElement : RadAutoCompleteBoxElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadAutoCompleteBoxElement);
        }
    }
    protected override void OnKeyDown(KeyEventArgs e)
    {
        e.SuppressKeyPress = true;
        e.Handled = true;
    }
}

````

Replace the standard `RadAutoCompleteBox` with the custom `MyAutoCompleteBoxControl` in your application. This will prevent users from typing in the control.

## See Also

- [RadAutoCompleteBox Documentation](https://docs.telerik.com/devtools/winforms/controls/editors/autocompletebox/autocompletebox)
