---
title: Customizing Close Button and Footer Panel in DateTimePicker for UI for WinForms
description: Learn how to customize the Close Button and Footer Panel in the DateTimePicker for UI for WinForms, including steps to hide the resize bar and set colors.
type: how-to
page_title: How to Customize Close Button and Footer Panel in DateTimePicker for UI for WinForms
meta_title: How to Customize Close Button and Footer Panel in DateTimePicker for UI for WinForms
slug: datetimepicker-customizing-footer-panel
tags: editors, datetimepicker, ui-for-winforms, footerpanel, close-button, customization, popupcontrol, opened-event, sizinggrip
res_type: kb
ticketid: 1577254
---

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description
In this tutorial, we will demonstrate how to customize the Close Button and Footer Panel in the [UI for WinForms DateTimePicker](https://docs.telerik.com/devtools/winforms/controls/editors/datetimepicker/overview). 

## Solution

### Customizing the Close Button and Footer Panel

To customize the Close Button and Footer Panel:

1. Subscribe to the `PopupControl.Opened` event to ensure the control is fully loaded. This ensures that the Footer Panel and Close Button are accessible for customization.
2. Apply custom colors to the Footer Panel and Close Button within the `PopupControl.Opened` event.

````C#

private void InitializeDateTimePicker()
{
     this.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = true;

    RadDateTimePickerCalendar calendarBehavior = this.radDateTimePicker1.DateTimePickerElement.GetCurrentBehavior() as RadDateTimePickerCalendar;
calendarBehavior.PopupControl.Opened += PopupControl_PopupOpened;
}

private void PopupControl_PopupOpened(object sender, EventArgs e)
{
    RadDateTimePickerDropDown dd = sender as RadDateTimePickerDropDown;
    TimePickerDoneButtonContent buttonContent = ((RadPanel)dd.HostedControl).Controls[2] as TimePickerDoneButtonContent;

    var buttonWrapElement = ((Telerik.WinControls.UI.TimePickerDoneButtonElement)(buttonContent.RootElement.Children[0]));
    buttonWrapElement.BackColor = Color.Green;
    var closeButton = buttonWrapElement.Children[0] as RadButtonElement;
    closeButton.ForeColor = Color.White;
    closeButton.ButtonFillElement.BackColor = Color.Blue;
    closeButton.ButtonFillElement.NumberOfColors = 1;
}

````

### Hiding the Resize Bar

To hide the Resize Bar:

1. Access the `SizingGrip` element of the `PopupControl`.
2. Set its `Visibility` property to `ElementVisibility.Collapsed`.

Example code:

````C#

RadDateTimePickerCalendar calendarBehavior = this.dateTimePicker1.DateTimePickerElement.GetCurrentBehavior() as RadDateTimePickerCalendar;
calendarBehavior.PopupControl.SizingGrip.Visibility = ElementVisibility.Collapsed;

````

Ensure that you apply this property during initialization or within relevant events to avoid the Resize Bar reappearing.

### Resolving Footer Panel Color Issue on First Open

To resolve the issue where the Footer Panel color does not apply on the first open, ensure you override the colors in the `PopupControl.Opened` event. This guarantees the correct behavior even when the control is opened for the first time.

## See Also

- [UI for WinForms DateTimePicker Documentation](https://docs.telerik.com/devtools/winforms/controls/editors/datetimepicker/overview)
- [Event Handling in UI for WinForms](https://docs.telerik.com/devtools/winforms/getting-started/events-overview)
- [Customizing UI Elements in UI for WinForms](https://docs.telerik.com/devtools/winforms/customizing-ui-elements)
