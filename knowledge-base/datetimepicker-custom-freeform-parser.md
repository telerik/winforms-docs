---
title: Implementing a Custom Freeform Date Parser in RadDateTimePicker
description: Learn how to extend the freeform parsing capabilities of RadDateTimePicker by implementing a custom parsing logic.
type: how-to
page_title: Custom Freeform Date Parsing for RadDateTimePicker in UI for WinForms
meta_title: Custom Freeform Date Parsing for RadDateTimePicker in UI for WinForms
slug: custom-freeform-date-parser-raddatetimepicker-ui-winforms
tags: editors, datetimepicker, ui for winforms, freeformdatetimerovider, custom parser, parsing logic
res_type: kb
ticketid: 1677331
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.4.1111|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this article we will demonstrate how to enhance the functionality of the RadDateTimePicker by allowing users to input custom freeform text, such as "today - 4w" or "bomonth - 6m". The goal is to run a custom parser first, which processes the input according to specific rules. If the custom parser fails, the input should fall back to the standard parser.


## Solution

To achieve the desired functionality, create a custom class that inherits from the `FreeFormDateTimeProvider` class. Override the `OnParsingDateTime` method to implement custom parsing logic. If your parser successfully parses the input, return the parsed result; otherwise, call the base method to fall back to the default parser.

1. Set the `MaskType` property of the RadDateTimePicker to `FreeFormDateTime`.
2. Assign your custom provider to the `TextBoxElement.Provider` property.
3. Implement your parsing logic in the overridden `OnParsingDateTime` method.

Example code:

````C#

// Configure RadDateTimePicker to use FreeFormDateTimeProvider
radDateTimePicker1.DateTimePickerElement.TextBoxElement.MaskType = MaskType.FreeFormDateTime;
radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider = new MyFreeFormProvider(provider.Mask, provider.Culture, provider.Owner);

// Custom FreeFormDateTimeProvider class
public class MyFreeFormProvider : FreeFormDateTimeProvider
{
    public MyFreeFormProvider(string mask, CultureInfo culture, RadMaskedEditBoxElement owner) : base(mask, culture, owner)
    {
    }

    public override void OnParsingDateTime(ParsingDateTimeEventArgs e)
    {
        var inputString = e.InputString;

        // Custom parsing logic
        bool success = DateTime.TryParse(inputString, out DateTime parsedDate);
        if (success)
        {
            e.Result = parsedDate;
            return; // Exit if successfully parsed
        }

        // Fallback to base parser
        base.OnParsingDateTime(e);
    }
}

````

