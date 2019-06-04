---
title: MenuStrip
page_title: MenuStrip | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/menustrip
tags: covert, winforms, numericupdown, spineditor
published: True
position: 1
---

# MenuStrip

The MenuStrip control in your application will be converted to [RadMenu]({%slug winforms/menus/menu%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AllowItemReorder|Produces Error||
|GripStyle|Removed|   |
|GripMargin|Removed|   |
|LayoutStyle|Produces Error|   |
|MdiWindowListItem|Produces Error|   |
|TextDirection|Removed|   |
|RenderMode|Removed|   |
|Stretch|Removed|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|BeginDrag|Produces Error|   |
|EndDrag|Produces Error|   |
|ItemAdded|Produces Error|   |
|ItemClicked|Produces Error| |
|ItemRemoved|Produces Error| |
|LayoutCompleted|Produces Error| |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|GetItemAt|Produces Error|   |

### ToolStrip Items are converted to __RadMenuItems__:

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Produces Error|   |
|BackgroundImage|Produces Error|   |
|BackgroundImageLayout|Produces Error|   |
|Checked|Replaced|IsChecked|
|CheckState|Replaced|ToggleState|
|DisplayStyle|Replaced|DisplayStyle|
|ImageAlign|Replaced|ImageAlignment|
|ImageScaling|Removed| |
|ImageTransparentColor|Removed| |
|Overflow|Removed | |
|MergeAction|Replaced|MergeType|
|RightToLeft (Enumeration)|Replaced|RightToLeft (Boolean)|
|RightToLeftAutoMirrorImage|Removed| |
|ShortcutKeyDisplayString|Replaced|HintText|
|ShortcutKeys|Produces Error| |
|ShowShortcutKeys|Produces Error||
|TextAlign|Replaced|TextAlignment|
|Visible|Replaced|Visibility|
|MergeAction|Produces Error|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|BackColorChanged|Produces Error|   |
|ForeColorChanged|Produces Error|   |
|LocationChanged|Produces Error|   |
|OwnerChanged|Produces Error| |
|Paint|Produces Error| |
|RightToLeftChanged|Produces Error| |
|VisibleChanged|Produces Error| |


|Methods|Action|RadControls Equivalent|
|---|---|---|
|GetPreferredSize|Produces Error|   |
|InitializeLifetimeService|Produces Error|   |
|GetLifetimeService|Produces Error|   |
|GetCurrentParent|Produces Error| |
|CreateObjRef|Produces Error| |
|GetCurrentParent|Produces Error| |

### ToolStripComboBox is converted to RadMenuComboItem

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoCompleteCustomSource|Produces Error|   |
|AutoCompleteMode|Produces Error|   |
|AutoCompleteSource|Produces Error|   |
|DropDownStyle|Produces Error| |
|DropDownWidth|Produces Error| |
|FlatStyle|Produces Error| |
|IntegralHeight|Produces Error|   |
|SelectedIndex|Produces Error| |
|RightToLeft (Enumeration)|Produces Error| |
|Sorted|Produces Error| |
|DropDownHeight|Replaced with |ComboBoxElement.DropDownHeight|
|DropDownStyle|Replaced with |ComboBoxElement.DropDownStyle|
|DropDownWidth|Replaced with |ComboBoxElement.DropDownWidth|
|FlatStyle|Removed| |
|RightToLeft (Enumeration)|Replaced with |RightToLeft (Boolean)|
|SelectedIndex|Replaced with |ComboBoxElement.SelectedIndex|
|Sorted|Replaced with |ComboBoxElement.SortStyle|

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})
