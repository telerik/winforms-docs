---
title: Providers
page_title: Providers - WinForms DateTimePicker Control
description: Learn about the available mask providers in RadDateTimePicker and how to access and configure them for different date and time input scenarios.
slug: winforms/editors/datetimepicker/providers
tags: datetimepicker, providers, maskdatetimeprovider, freeformdatetimeprovider
published: True
position: 8
---

# Providers

**RadDateTimePicker** uses an embedded **RadMaskedEditBox** as its text editor. The text input validation and formatting is handled by a mask provider, which implements the `IMaskProvider` interface. Each provider type corresponds to a specific `MaskType` value and is responsible for parsing, validating, and formatting user input.

The following table lists the available providers that can be used with **RadDateTimePicker**:

|MaskType|Provider|Description|
|----|----|----|
|MaskType.**DateTime**|`MaskDateTimeProvider`|Validates and formats `DateTime` values with mask-based editing.|
|MaskType.**FreeFormDateTime**|`FreeFormDateTimeProvider`|Allows free-form date and time input without strict mask restrictions.|

## Accessing the Provider

The provider is accessible through the `DateTimePickerElement.TextBoxElement.Provider` property. Cast it to the appropriate type to access the specific API:

````C#
MaskDateTimeProvider provider = this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider;
````
````VB.NET
Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
````

To change the provider type, set the `MaskType` property on the embedded text editor:

````C#
this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime;
````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime
````

## MaskDateTimeProvider

The `MaskDateTimeProvider` is the default provider used by **RadDateTimePicker**. It validates values of type `DateTime` and provides mask-based editing where the user navigates between individual date and time parts (day, month, year, hour, minute, and similar).

### Key Properties

|Property|Type|Description|
|---|---|---|
|`AutoSelectNextPart`|`bool`|Controls whether the next date part is automatically selected when the user finishes typing in the current part.|
|`EnableKeyNavigation`|`bool`|Enables or disables the selection of the next or previous part with the arrow keys.|
|`SelectedItemIndex`|`int`|Gets or sets the index of the currently selected date part.|
|`AutoCompleteYear`|`bool`|Indicates whether to auto-complete years on user input.|
|`YearResetValue`|`int`|Determines the year value when it has been reset.|
|`HoursStep`|`int`|Gets or sets the step used when incrementing or decrementing the hours.|
|`MinutesStep`|`int`|Gets or sets the step used when incrementing or decrementing the minutes.|
|`SecondsStep`|`int`|Gets or sets the step used when incrementing or decrementing the seconds.|
|`MillisecondsStep`|`int`|Gets or sets the step used when incrementing or decrementing the milliseconds.|
|`MinDate`|`DateTime`|Gets or sets the minimum allowed date.|
|`MaxDate`|`DateTime`|Gets or sets the maximum allowed date.|

### Key Methods

|Method|Description|
|---|---|
|`SelectFirstItem()`|Selects the first part of the date.|
|`SelectNextItem()`|Selects the next part of the date.|

### Example

````C#
MaskDateTimeProvider provider = this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider;
provider.AutoSelectNextPart = true;
provider.MinutesStep = 5;
provider.SecondsStep = 10;
````
````VB.NET
Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
provider.AutoSelectNextPart = True
provider.MinutesStep = 5
provider.SecondsStep = 10
````

>note For Arabic, Persian, and Hijri calendars, the `ArabicMaskDateTimeProvider` is automatically used instead of the standard `MaskDateTimeProvider`. It provides culture-specific support for these calendar systems.

## FreeFormDateTimeProvider

The `FreeFormDateTimeProvider` extends `MaskDateTimeProvider` and allows free-form date and time input. Instead of strict mask-based editing, users can type dates in various formats, and the provider parses the input using a formal grammar algorithm.

To enable free-form input, set the `MaskType` to `FreeFormDateTime`:

````C#
this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime;
````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime
````

### Key Properties

The `FreeFormDateTimeProvider` inherits all properties from `MaskDateTimeProvider` and adds:

|Property|Type|Description|
|---|---|---|
|`Parser`|`DateInput`|Gets or sets the parser used for flexible date and time input parsing.|

>tip For more details on the parsing logic, refer to the [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%}) article.

## MaskProviderCreated Event

The `MaskProviderCreated` event fires each time a new provider instance is created, for example, when the `MaskType` property is changed. You can use this event to configure the provider after it has been created:

````C#
this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskProviderCreated += TextBoxElement_MaskProviderCreated;

private void TextBoxElement_MaskProviderCreated(object sender, EventArgs e)
{
    MaskDateTimeProvider provider = this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider;
    if (provider != null)
    {
        provider.AutoSelectNextPart = true;
    }
}
````
````VB.NET
AddHandler Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskProviderCreated, AddressOf TextBoxElement_MaskProviderCreated

Private Sub TextBoxElement_MaskProviderCreated(ByVal sender As Object, ByVal e As EventArgs)
    Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
    If provider IsNot Nothing Then
        provider.AutoSelectNextPart = True
    End If
End Sub
````

# See Also

* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
* [Mask Types and Providers (RadMaskedEditBox)]({%slug winforms/editors/maskededitbox/mask-types-and-providers%})
* [Date and Time Masks]({%slug winforms/editors/maskededitbox/date-and-time-masks%})
* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
