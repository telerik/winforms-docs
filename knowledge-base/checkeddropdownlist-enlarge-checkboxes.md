---
title: Enlarging Checkboxes Within RadCheckedDropDownList Items
description: Learn how to increase the size of checkboxes in the dropdown items of a RadCheckedDropDownList.
type: how-to
page_title: How to Increase Checkboxes Size in RadCheckedDropDownList Items
slug: checkeddropdownlist-enlarge-checkboxes
tags: dropdownlistcontrolandcheckeddropdownlist, checkbox, size, dropdownlistitem, visualitemformatting
res_type: kb
ticketid: 1666283
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.806|RadCheckedDropDownList for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description
Adjusting the size of checkboxes within the dropdown items of a RadCheckedDropDownList can enhance the visual appeal and usability of the application. This article demonstrates how to increase the size of checkboxes alongside adjusting the height of the dropdown items for better alignment and visibility.

## Solution

To enlarge the checkboxes within the dropdown items and adjust their alignment, follow these steps:

1. Increase the item height in the dropdown list to provide sufficient space for the larger checkbox.

````C#
   this.radCheckedDropDownList1.DropDownListElement.ListElement.ItemHeight = 35;

````

2. Subscribe to the `VisualListItemFormatting` event of the RadCheckedDropDownList. This event allows you to customize the appearance of each item in the dropdown list.

3. Within the event handler, access the checkbox element of each item and set the minimum size for the checkbox image. Additionally, the center aligns the text of the item for better visual alignment.

````C#
   private void radCheckedDropDownList1_VisualListItemFormatting(object sender, VisualItemFormattingEventArgs args)
   {
       RadCheckedListDataItem checkedItem = args.VisualItem.Data as RadCheckedListDataItem;
       if (checkedItem != null)
       {
           RadCheckedListVisualItem visualItem = args.VisualItem as RadCheckedListVisualItem;
           RadCheckBoxElement checkBoxElement = visualItem.CheckBox as RadCheckBoxElement;
           checkBoxElement.CheckMarkPrimitive.ImageElement.MinSize = new Size(20,20);
           visualItem.Label.TextAlignment = ContentAlignment.MiddleCenter;
       }
   }

````

## See Also

- [RadCheckedDropDownList Overview](https://docs.telerik.com/devtools/winforms/controls/checkeddropdownlist/overview)
- [Customizing Appearance](https://docs.telerik.com/devtools/winforms/controls/checkeddropdownlist/customizing-appearance)
- [Handling Events](https://docs.telerik.com/devtools/winforms/controls/checkeddropdownlist/events)
