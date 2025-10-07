---
title: Auto Sizing BindingNavigator in UI for WinForms
description: Learn how to make the RadBindingNavigator in UI for WinForms grow and shrink dynamically with its contents.
type: how-to
page_title: Dynamically Adjusting RadBindingNavigator Size in WinForms
meta_title: Dynamically Adjusting RadBindingNavigator Size in WinForms
slug: auto-sizing-bindingnavigator-winforms
tags: radbindingnavigator, winforms, bindingsource, autosize, textchanged-event
res_type: kb
ticketid: 1698112
---

## Environment
<table>
<tbody>
<tr>
<td> Product </td>
<td> UI for WinForms RadBindingNavigator </td>
</tr>
<tr>
<td> Version </td>
<td> Current </td>
</tr>
</tbody>
</table>

## Description

I want the RadBindingNavigator to grow or shrink dynamically when its contents change, such as when the `CommandBarLabel` text updates. Placing it inside a `TableLayoutPanel` set to auto-size and without docking or anchoring causes the last button to get hidden when the content grows. Docking the navigator and using alignment and stretch settings on its `CommandBarRowElement` and `CommandBarStripElement` also aligns it to the left instead of keeping it centered.

This knowledge base article also answers the following questions:
- How to make RadBindingNavigator resize dynamically with its content?
- Why does RadBindingNavigator align left when docked and centered in the designer?
- How to handle RadBindingNavigator alignment and resizing in UI for WinForms?

## Solution

To make the RadBindingNavigator grow and shrink dynamically with its contents, manually update its size based on the change in the size of the element holding the text label. Use the following approach:

1. Subscribe to the `TextChanged` event of the `PageLabel` in your code.
2. Implement a delayed execution mechanism using a timer to adjust the width of the RadBindingNavigator.

Here is a sample implementation:

```csharp
public partial class Form1 : Telerik.WinControls.UI.RadForm
{
    private int textLength = 0;

    public Form1()
    {
        InitializeComponent();

        this.radBindingNavigator1.BindingNavigatorElement.PageLabel.TextChanged += PageLabel_TextChanged;
    }

    protected override void OnShown(EventArgs e)
    {
        base.OnShown(e);

        // Store the initial width of the PageLabel.
        this.textLength = this.radBindingNavigator1.BindingNavigatorElement.PageLabel.BoundingRectangle.Width;
    }

    private void PageLabel_TextChanged(object? sender, EventArgs e)
    {
        // Use a timer for delayed execution to handle asynchronous UI updates.
        System.Windows.Forms.Timer timer = new System.Windows.Forms.Timer();
        timer.Interval = 10; // Set a small delay.
        timer.Tick += (t, args) =>
        {
            timer.Stop();

            // Calculate the difference in label width and adjust navigator width.
            int newLength = this.radBindingNavigator1.BindingNavigatorElement.PageLabel.BoundingRectangle.Width;
            this.radBindingNavigator1.Width += (newLength - this.textLength);
            this.textLength = newLength;
        };

        timer.Start();
    }
}
```

### Notes:
- The RadBindingNavigator is designed to be docked, and its inner elements are left-aligned by default. To achieve center alignment and dynamic resizing, use the manual adjustment approach discussed above.
- Test the solution thoroughly as this approach may not handle all possible scenarios.

## See Also

- [RadBindingNavigator Documentation](https://docs.telerik.com/devtools/winforms/controls/binding-navigator/overview)
- [RadCommandBarRowElement API](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.commandbarrowelement)
- [RadCommandBarStripElement API](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.commandbarstripelement) 
- [Handling TextChanged Events in UI for WinForms](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.textchanged?view=windowsdesktop-7.0)
