---
title: Adjusting Scroll Speed in RadPdfViewer for WinForms
description: Learn how to customize the vertical scroll speed in RadPdfViewer for WinForms for a faster navigation experience.
type: how-to
page_title: How to Increase Vertical Scroll Speed in RadPdfViewer for WinForms
slug: pdfviewer-adjust-scroll-speed
tags: pdfviewer, winforms, scroll, speed, mousewheel
res_type: kb
ticketid: 1674244
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadPdfViewer for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

Adjusting the default scroll speed of RadPdfViewer is essential when need to navigate through documents more quickly. This knowledge-base article also answers the following questions:

- How can I increase the mouse wheel scroll speed in RadPdfViewer?
- Is there a way to customize scrolling behavior in RadPdfViewer for WinForms?
- How to modify RadPdfViewer to scroll faster with the mouse wheel?

## Solution

To change the scrolling speed in RadPdfViewer, create a custom `RadPdfViewer` control by overriding the `ProcessMouseWheel` method. This adjustment allows for a customized scrolling experience, enhancing navigation through documents.

### Step 1: Create the Custom RadPdfViewer Control

First, implement the `CustomPdfViewer` class by extending `RadPdfViewer`. This class overrides the `CreateViewerElement` method to return an instance of a custom `RadPdfViewerElement`.

````C#
public class CustomPdfViewer : RadPdfViewer
{
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadPdfViewer).FullName;
        }
    }
    protected override RadPdfViewerElement CreateViewerElement()
    {
        return new CustomRadPdfViewerElement();
    }
}

````

### Step 2: Customize the RadPdfViewerElement

Next, define the `CustomRadPdfViewerElement` class by extending `RadPdfViewerElement`. Override the `ProcessMouseWheel` method to customize the scroll behavior. In this example, the scroll amount is multiplied by 5 to increase the scroll speed. Adjust this value as needed.

````C# 
public class CustomRadPdfViewerElement : RadPdfViewerElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadPdfViewerElement);
        }
    }
    public override bool ProcessMouseWheel(MouseEventArgs e, bool shift, bool control)
    {
        if (this.Document == null)
        {
            return false;
        }

        float scale = this.ScaleFactor;

        if (control)
        {
            if (e.Delta > 0)
            {
                scale *= 1.1f;
            }
            else
            {
                scale *= 0.9f;
            }

            this.ScaleFactor = scale;
        }
        else
        {
            int newValue;
            if (this.Scroller.ScrollMode != ItemScrollerScrollModes.Discrete)
            {
                newValue = this.VScrollBar.Value + Math.Sign(e.Delta) * -30 * 5; // Adjust scroll speed here
            }
            else
            {
                newValue = this.VScrollBar.Value - Math.Sign(e.Delta);
            }
            newValue = Math.Max(0, Math.Min(this.VScrollBar.Maximum - this.VScrollBar.LargeChange + 1, newValue));
            this.VScrollBar.Value = newValue;
        }
        return false;
    }
}

````

### Step 3: Replace RadPdfViewer with the Custom Control

In the Designer.cs file of your form, replace the `RadPdfViewer` control instance with the newly created `CustomPdfViewer` control. This change applies the customized scrolling functionality to your application.

## See Also

* [RadPdfViewer Overview](https://docs.telerik.com/devtools/winforms/controls/pdfviewer/overview)
* [Customizing RadPdfViewer](https://docs.telerik.com/devtools/winforms/controls/pdfviewer/customization)
* [Handling Mouse Wheel Events](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.mousewheel)
