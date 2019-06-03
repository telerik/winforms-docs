---
title: CheckedListBox
page_title: CheckedListBox | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/checkedlistbox
tags: covert, winforms, CheckedListBox, 
published: True
position: 1
---

# CheckedListBox

The CheckedListBox control in your application will be converted to [RadCheckedListBox]({%slug winforms/checkedlistbox%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|BorderStyle|Removed||
|CheckOnClick|Replaced|CheckOnClickMode|
|ColumnWidth|Produces Error||
|FormatString|Produces Error||
|FormattingEnabled|Removed||
|HorizontalExtent|Removed||
|HorizontalScrollbar|Replaced|HorizontalScrollState |
|IntegralHeight|Removed||
|MultiColumn|Produces Error||
|ThreeDCheckBoxes|Removed||
|Sorted|Produces Error||
|ScrollAlwaysVisible
|Replaced|VerticalScrollState|
|UseTabStops|Removed||

|Events|Action|RadControls Equivalent|
|---|---|---|
|Format|Produces Error||
|FormatStringChanged|Produces Error||
|FormattingEnabledChanged|Produces Error||
|ItemCheck|Replaced|ItemCheckedChanged|
|SelectedValueChanged|Produces Error||

|Methods|Action|RadControls Equivalent|
|---|---|---|
|ClearSelected()|Replaced|SelectedItems.Clear()|
|FindString(string s)|Produces Error||
|FindStringExact(string s|Produces Error||
|IndexFromPoint(Point p)|Produces Error||
|GetItemChecked(int index)|Produces Error||
|GetItemCheckState(int index)|Produces Error|Items[2].CheckState|
|GetSelected(int index)|Produces Error||
|GetItemText(object item)|Produces Error||
|GetItemHeight(int index)|Produces Error||
|GetItemRectangle(int index)|Produces Error||
|SetItemChecked(int index, bool value)|Produces Error||
|SetItemCheckState(int index, CheckState value)|Produces Error||
|SetSelected(int index, bool value)|Produces Error||