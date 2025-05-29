---
title: Customizing RadDropDownList Pop-Up Location Across Dual Monitors in UI for WinForms
description: Learn how to customize the pop-up location of RadDropDownList when stretched across two monitors in Telerik UI for WinForms.
type: how-to
page_title: Adjusting RadDropDownList Pop-Up Behavior on Dual Monitors
slug: dropdownlist-popup-dual-monitors
tags: raddropdownlist, dual-monitors, pop-up-location, ui-for-winforms
res_type: kb
ticketid: 1687869
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadDropDownList for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

When RadDropDownList is stretched across two monitors, the dropdown part may exhibit unexpected behavior, such as shifting upon opening. This behavior occurs because controls like RadDropDownList are designed to operate within one monitor, scaling automatically to the monitor's DPI and resolution settings. Stretching the form across two monitors introduces complexities that may require custom handling.

## Solution

To customize the behavior of RadDropDownList when stretched across two monitors, you can create a custom solution to control the pop-up location. Follow these steps:

1. Create a custom class that inherits from `RadDropDownList`.
2. Override the following methods to customize the dropdown pop-up behavior.

### Example Implementation

````C#

public class CustomDropDownList : RadDropDownList
{
    protected override RadDropDownListElement CreateDropDownListElement()
    {
        return new CustomDropDownListElement();
    }
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadDropDownList).FullName;
        }
        set
        {
            base.ThemeClassName = value;
        }
    }
}

public class CustomDropDownListElement : RadDropDownListElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadDropDownListElement);
        }
    }

    public class MyDropDownPopupForm : DropDownPopupForm
    {
        public MyDropDownPopupForm(RadDropDownListElement ownerDropDownListElement) : base(ownerDropDownListElement)
        {
        }

        public override string ThemeClassName
        {
            get
            {
                return typeof(RadSizablePopupControl).FullName;
            }
            set
            {
                base.ThemeClassName = value;
            }
        }

        protected override Point GetCorrectedLocation(Screen currentScreen, Rectangle alignmentRectangle, Size popupSize)
        {
            // MyBase.GetCorrectedLocation(currentScreen, alignmentRectangle, popupSize)
            return alignmentRectangle.Location;
        }
    }

    protected override RadPopupControlBase CreatePopupForm()
    {
        MyDropDownPopupForm popup = new MyDropDownPopupForm(this);

        popup.VerticalAlignmentCorrectionMode = AlignmentCorrectionMode.SnapToOuterEdges;
        popup.SizingMode = this.DropDownSizingMode;
        popup.Height = this.DropDownHeight;
        popup.HorizontalAlignmentCorrectionMode = AlignmentCorrectionMode.Smooth;
        this.WirePopupFormEvents(popup);

        this.Popup = popup;
        return popup;
    }

    protected override Point GetPopupLocation(RadPopupControlBase popup)
    {
        var form1 = this.ElementTree.Control.FindForm();
        var formBounds = form1.Bounds;
        var controlLocationInScreen = this.ElementTree.Control.Location;
        Control parentControl = this.ElementTree.Control.Parent;
        while (parentControl != null)
        {
            controlLocationInScreen.X += parentControl.Location.X;
            controlLocationInScreen.Y += parentControl.Location.Y;
            parentControl = parentControl.Parent;
        }

        controlLocationInScreen.X += form1.Size.Width - form1.ClientSize.Width;
        controlLocationInScreen.Y += form1.Size.Height - form1.ClientSize.Height;

        controlLocationInScreen.Y += this.Bounds.Height;

        return controlLocationInScreen;
    }
    protected override Size GetPopupSize(RadPopupControlBase popup, bool measure)
    {
        Size size = base.GetPopupSize(popup, measure);
        size.Width = this.BoundingRectangle.Width;
        // Adjust the size as needed
        return size;
    }
}

````

3. Replace the standard `RadDropDownList` with the custom class `CustomDropDownList` in your project.

This solution allows you to define a custom location for the dropdown pop-up and adjust its size as needed, ensuring proper behavior when stretched across dual monitors.

## See Also

- [RadDropDownList Documentation](https://docs.telerik.com/devtools/winforms/controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/overview)
