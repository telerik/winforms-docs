---
title: Auto Sizing BindingNavigator when its content grows
description: Learn how to make the RadBindingNavigator in UI for WinForms grow and shrink dynamically with its contents.
type: how-to
page_title: Dynamically Adjusting RadBindingNavigator Size
meta_title: Dynamically Adjusting RadBindingNavigator Size
slug: auto-sizing-bindingnavigator-winforms
tags: radbindingnavigator, winforms, bindingsource, autosize, textchanged-event
res_type: kb
ticketid: 1698112
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadBindingNavigator for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

I want the RadBindingNavigator to grow or shrink dynamically when its contents change, such as when the `CommandBarLabel` text updates. Placing it inside a `TableLayoutPanel` set to auto-size and without docking or anchoring causes the last button to get hidden when the content grows. Docking the navigator and using alignment and stretch settings on its `CommandBarRowElement` and `CommandBarStripElement` also aligns it to the left instead of keeping it centered.

This knowledge base article answers how to make RadBindingNavigator resize dynamically with its content.

## Solution

To make the RadBindingNavigator grow and shrink dynamically with its contents, manually update its size based on the change in the size of the element holding the text label. Use the following approach:

1. Subscribe to the `TextChanged` event of the `BindingNavigatorElement.PageLabel` in your code.
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


