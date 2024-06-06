---
title: Adding a Custom Banner to RadRibbonBar Header
description: Learn how to add a custom message banner to the header of RadRibbonBar in WinForms applications.
type: how-to
page_title: How to Add a Custom Banner to RadRibbonBar Header in WinForms
slug: radribbonbar-add-custom-banner
tags: radribbonbar, winforms, custom banner, header, lightvisualelement, stacklayoutelementlite
res_type: kb
ticketid: 1653851
---

## Environment

| Product | Version |
| --- | --- |
| RadRibbonBar for WinForms | Current |

## Description

It is often required to display custom messages or banners in the header of the RadRibbonBar to notify users about certain conditions or information, such as running the program in offline mode. This article demonstrates how to add a custom message banner to the header of the RadRibbonBar component in a WinForms application.

This KB article also answers the following questions:
- How can I display a custom message in the RadRibbonBar header?
- Is it possible to add interactive elements to the RadRibbonBar header?
- How to customize the appearance of elements added to the RadRibbonBar header?

## Solution

To add a custom banner with a message and an interactive element to the RadRibbonBar header, follow these steps:

1. Create two `LightVisualElement` objects for the message text and the interactive part (e.g., a "Details" link).
2. Add these elements into a `StackLayoutElementLite`.
3. Customize the appearance of the `StackLayoutElementLite` and its children.
4. Add the stack to the header's children of the `RadRibbonBar`.
5. Adjust the margin of the application button element based on the header size.

Here is a code snippet illustrating these steps:

```csharp
public RadForm1()
{
    InitializeComponent();
    this.Text = "Application Manager";

    LightVisualElement lve = new LightVisualElement
    {
        Text = "You are running this program in offline mode. Your product access will expire in 30 days",
        StretchVertically = true
    };

    LightVisualElement lve2 = new LightVisualElement
    {
        Text = "Details",
        Font = new Font("Segoe UI", 9f, FontStyle.Underline),
        ForeColor = Color.Blue,
        StretchVertically = true
    };
    lve2.Click += this.Lve2_Click;

    var stackElement = new StackLayoutElementLite
    {
        Padding = new Padding(6),
        StretchHorizontally = true,
        Children = { lve, lve2 },
        DrawFill = true,
        GradientStyle = Telerik.WinControls.GradientStyles.Solid,
        BackColor = Color.LightYellow,
        DrawBorder = true,
        BorderGradientStyle = Telerik.WinControls.GradientStyles.Solid,
        BorderColor = Color.Orange
    };

    this.radRibbonBar1.ShowExpandButton = false;
    var tabStrip = this.radRibbonBar1.RibbonBarElement.TabStripElement;
    tabStrip.Header.Visibility = Telerik.WinControls.ElementVisibility.Visible;
    tabStrip.Header.DrawText = false;
    tabStrip.Header.Children.Add(stackElement);
    tabStrip.PropertyChanged += this.TabStrip_PropertyChanged;
}

private void Lve2_Click(object sender, EventArgs e)
{
    // Action for the Details click event
}

private void TabStrip_PropertyChanged(object sender, PropertyChangedEventArgs e)
{
    if (e.PropertyName == "Bounds")
    {
        RibbonTabStripElement tabStrip = this.radRibbonBar1.RibbonBarElement.TabStripElement;
        RadApplicationMenuButtonElement appBtn = this.radRibbonBar1.RibbonBarElement.ApplicationButtonElement;
        appBtn.Margin = new Padding(0, (int)tabStrip.Header.DesiredSize.Height, 0, 0);
    }
}
```

## Notes

- The `LightVisualElement` allows for flexible styling and interaction, making it suitable for displaying custom text and handling click events.
- Adjusting the `RadApplicationMenuButtonElement` margin ensures that the application button aligns properly with the custom header.

## See Also

- [RadRibbonBar Documentation](https://docs.telerik.com/devtools/winforms/controls/ribbonbar/overview)
- [LightVisualElement Documentation](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.lightvisualelement)
- [StackLayoutElementLite Documentation](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.stacklayoutelementlite)
