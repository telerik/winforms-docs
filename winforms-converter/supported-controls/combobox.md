---
title: ComboBox
page_title: ComboBox | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/combobox
tags: covert, winforms, combobox, raddropdownlist
published: True
position: 1
---

# ComboBox

The ComboBox is converted to [RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Sorted|Replaced|SortStyle = SortStyle.Ascending|
|ComboBoxStyle.Simple|Replaced|RadDropDownStyle.DropDown|
|ComboBoxStyle.DropDown|Replaced|RadDropDownStyle.DropDown|
|ComboBoxStyle.DropDownList|Replaced|RadDropDownStyle.DropDownList|
|ItemHeight|Replaced|DropDownListElement.ItemHeight|
|IntegralHeight|Removed|   |
|FlatStyle|Removed|   |
|DropDownWidth|Replaced|DropDownListElement.DropDownWidth|
|DrawMode|Removed|   |
|AutoCompleteCustomSource|Removed|   |
|AutoCompleteSource|Produces Error|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|GetItemText(index)|Produces Error|Items[index].Text|
|GetItemHeight(index)|Produces Error| |

|Events|Action|RadControls Equivalent|
|---|---|---|
|DropDown|Replaced|PopupOpened|
|DropDownClosed|Replaced|PopupClosed|
|DataSourceChanged|Produces Error|   |
|ValueMemberChanged|Produces Error|   |
|DrawItem|Produces Error|   |
|MeasureItem|Produces Error|   |
|DropDownStyleChanged|Produces Error|   |
|FormatInfoChanged|Produces Error|   |
|FormatStringChanged|Produces Error|   |
|FormattingEnabledChanged|Produces Error|   |
|TextUpdate|Produces Error|   |
|SelectionChangeCommitted|Produces Error|   |

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements]({%slug winforms/winforms-converter/requirements%})