---
title: Apply Theming to custom RadButtonElement in RadRibbonBar
description: Learn how to apply consistent themes to derived RadButtonElement instances in RadRibbonBar for UI for WinForms.
type: how-to
page_title: Applying Themes to Custom RadButtonElements in RadRibbonBar
meta_title: Applying Themes to Custom RadButtonElements in RadRibbonBar
slug: ribbonbar-custom-button-element
tags: ribbonbar, radbuttonelement, themes, class-property
res_type: kb
ticketid: 1695130
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadRibbonBar for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

The RadRibbonBar applies themes based on specific Class property values set on its button elements and their key visual children. So, in order to use an extended RadButtonElement instance in RadRibbonBar, you should set the Class property of the elements that build the look of the button. This way, the custom button will be styled the same as the default buttons in RadRibbonBar control.

## Solution

Below is an example of how to implement this:

````C#

public class CustomRadButtonElement : RadButtonElement
{
    public CustomRadButtonElement()
    {
        // Set specific Class property values for consistent theming in RadRibbonBar
        this.Class = "RibbonBarButtonElement";
        this.BorderElement.Class = "ButtonInRibbonBorder";
        this.ButtonFillElement.Class = "ButtonInRibbonFill";
    }

    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadButtonElement);
        }
    }
}

````

This approach ensures that the `RadRibbonBar` applies the correct themes to the derived button element.

## See Also

* [RadRibbonBar Documentation](https://docs.telerik.com/devtools/winforms/controls/ribbonbar/overview)
