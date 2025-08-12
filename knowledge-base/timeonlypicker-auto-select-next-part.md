---
title: Applying AutoSelectNextPart Property to RadTimeOnlyPicker
description: Learn how to access and apply the AutoSelectNextPart property in RadTimeOnlyPicker.
type: how-to
page_title: Using AutoSelectNextPart Property in RadTimeOnlyPicker
meta_title: Using AutoSelectNextPart Property in RadTimeOnlyPicker
slug: timeonlypicker-auto-select-next-part
tags: editors,timeonlypicker, autoselectnextpart, timeonlyprovider, ui-for-winforms
res_type: kb
ticketid: 1695200
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadTimeOnlyPicker for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

While editing RadTimeOnlyPicker, it will not automatically select the next time part as the user types. In the following article, we will demonstrate how to enable the auto-select next part feature in the RadTimeOnlyPicker control.

## Solution

To access and apply the `AutoSelectNextPart` property to the RadTimeOnlyPicker, use the `TimeOnlyPickerElement`'s `MaskedEditBox.Provider`. Set the property as shown below:

````C#
MaskTimeOnlyProvider maskTimeOnlyProvider = this.radTimeOnlyPicker1.TimeOnlyPickerElement.MaskedEditBox.Provider as MaskTimeOnlyProvider;
maskTimeOnlyProvider.AutoSelectNextPart = true;

````

This snippet retrieves the provider for the `RadTimeOnlyPicker` and enables the `AutoSelectNextPart` property.

## See Also

* [RadTimeOnlyPicker Overview](https://docs.telerik.com/devtools/winforms/controls/editors/timeonlypicker/overview)
* [RadDateOnlyPicker Overview](https://docs.telerik.com/devtools/winforms/controls/editors/dateonlypicker/overview)
