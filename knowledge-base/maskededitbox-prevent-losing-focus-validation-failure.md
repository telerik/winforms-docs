---
title: Preventing RadMaskedEditBox from Losing Focus on Validation Failure
description: Learn how to keep the focus on a RadMaskedEditBox for WinForms when the Email mask validation fails.
type: how-to
page_title: How to Keep Focus on RadMaskedEditBox with Email MaskType on Validation Failure
slug: maskededitbox-prevent-losing-focus-validation-failure
tags: editors, maskededitbox, winforms, validation, focus
res_type: kb
ticketid: 1677692
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadChartView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In scenarios where a RadMaskedEditBox is used with an Email MaskType, it's crucial to ensure the input is valid before allowing the user to move focus away from the control. This article demonstrates how to prevent focus loss from a RadMaskedEditBox when email validation fails.

## Solution

To achieve this, handle the `Validating` event of the RadMaskedEditBox. Within the event handler, invoke the `Validate()` method of the `EMailMaskTextBoxProvider`, which is accessible via the `Provider` property of the `MaskedEditBoxElement`. If the validation fails, set the `Cancel` property of the `System.ComponentModel.CancelEventArgs` parameter to `true` to prevent focus change.

````C#
// Subscribe to the Validating event
this.radMaskedEditBox1.Validating += RadMaskedEditBox1_Validating;

// Validating event handler
private void RadMaskedEditBox1_Validating(object sender, System.ComponentModel.CancelEventArgs e)
{
    // Perform the validation
    bool isValid = ((EMailMaskTextBoxProvider)this.radMaskedEditBox1.MaskedEditBoxElement.Provider).Validate(this.radMaskedEditBox1.MaskedEditBoxElement.Text);
    // If validation fails, cancel the event to prevent focus loss
    if (!isValid)
    {
        e.Cancel = true;
    }
}
````


## See Also

- [RadMaskedEditBox Overview](https://docs.telerik.com/devtools/winforms/controls/editors/maskededitbox/maskededitbox)
