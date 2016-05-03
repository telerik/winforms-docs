---
title: DomainUpDown
page_title: DomainUpDown | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/domainupdown
tags: covert, winforms, domainupdown
published: True
position: 1
---

# DomainUpDown

This control is converted to [RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist%}). The following table describes which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|TextAlign|Replaced with|DropDownListElement.TextBox.TextAlign|
|UpDownAlign|Removed| |
|InterceptArrowKeys|Removed| |
|BorderStyle|Removed| |
|Sorted|Replace with |SortStyle = Telerik.WinControls.Enumerations.SortStyle.Ascending|
|Wrap|Removed| |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|UpButton()|Removed| |
|DownButton()|Removed| |

|Events|Action|RadControls Equivalent|
|---|---|---|
|SelectedItemChanged|Produces Error| |

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})