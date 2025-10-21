---
title: Adding a Right-Aligned Button Visible Across All RibbonTabs in RadRibbonBar
description: Learn how to add a button or control that remains visible and right-aligned across all RibbonTabs in RadRibbonBar, even when the window is resized.
type: how-to
page_title: How to Add a Right-Aligned Button Across RibbonTabs in RadRibbonBar
meta_title: How to Add a Right-Aligned Button Across RibbonTabs in RadRibbonBar
slug: ribbonbar-adding-right-aligned-elements-across-ribbontabs
tags: ribbonbar, ui for winforms, button, control, alignment, radribbonbar
res_type: kb
ticketid: 1700786
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadRibbonBar for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how to add a button or any control that remains visible and right-aligned in the RadRibbonBar across all RibbonTabs. The control should stay in the right corner even when the window is resized.

## Solution

In general, the RadRibbonBar control uses the RadPageView control internally. The RadPageView control exposes StripButtons (Scrolling and Overflow (strip buttons) ). We can use the panel in which these buttons are placed. The panel can be shown when one of the buttons is visible. Then you can hide only the buttons and leave the panel visible. Then, we can position our elements inside that panel on the right. In the following example, we will add a label and a button in the Load event of the Form:

Here is the code example:

````C#
protected override void OnLoad(EventArgs e)
{     
    RadPageViewStripElement strip = this.radRibbonBar1.RibbonBarElement.TabStripElement as RadPageViewStripElement;
    
    // Set StripButtons to Close
    strip.StripButtons = StripViewButtons.Close;

    // Hide strip buttons
    foreach (var c in strip.ItemContainer.ButtonsPanel.Children)
    {
        RadPageViewStripButtonElement b = c as RadPageViewStripButtonElement;
        if (b != null)
        {
            b.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
        }
    }

    // Hide the ItemListButton
    strip.ItemContainer.ButtonsPanel.ItemListButton.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;

    // Create custom layout with label and button
    StackLayoutElement stack = new StackLayoutElement();
    stack.StretchHorizontally = true;

    LightVisualElement text = new LightVisualElement();
    text.StretchHorizontally = true;
    text.TextAlignment = ContentAlignment.MiddleRight;
    text.Text = "Button: ";

    RadButtonElement btn = new RadButtonElement();
    btn.StretchHorizontally = false;
    btn.Alignment = ContentAlignment.MiddleRight;
    btn.Text = "Delete";
    btn.MaxSize = new System.Drawing.Size(60, 20);
    btn.Click += btn_Click;

    stack.Children.Add(text);
    stack.Children.Add(btn);
    stack.MinSize = new System.Drawing.Size(350, 0);

    // Insert the custom layout into ButtonsPanel
    strip.ItemContainer.ButtonsPanel.Children.Insert(0, stack);
}

````

Replace the label and button with your desired controls. Ensure proper alignment for each element added.

## See Also

* [RadPageView](https://docs.telerik.com/devtools/winforms/controls/pageview/overview)
* [RadRibbonBar Documentation](https://docs.telerik.com/devtools/winforms/controls/ribbonbar/overview)
* [Scrolling and Overflow (strip buttons)](https://docs.telerik.com/devtools/winforms/controls/pageview/stripview/scrolling-and-overflow-(strip-buttons))
