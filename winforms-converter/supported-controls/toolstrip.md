---
title: ToolStrip    
page_title: ToolStrip - Winforms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/toolstrip
tags: covert, winforms, treeview
published: True
position: 1
---

# ToolStrip

The ToolStrip is converted to [RadCommandBar]({%slug winforms/commandbar%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AllowMerge|Removed|   | 
|CanOverflow|Removed|   | 
|GripStyle|Removed|   | 
|GripMargin |Removed|   | 
|LayoutStyle|Removed|   | 
|RenderMode |Removed |   | 
|Stretch|Removed|   | 
|TextDirection|Produces Error|   | 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|GetNextItem()|Produces Error|   | 
|GetItemAt()|Produces Error|   | 


|Events|Action|RadControls Equivalent|
|---|---|---|
|BeginDrag|Produces Error|   | 
|EndDrag|Produces Error|   | 
|ItemAdded|Produces Error|   | 
|ItemClicked|Produces Error|   | 
|ItemRemoved|Produces Error|   | 
|LayoutCompleted|Produces Error|   | 
|LayoutStyleChanged|Produces Error|   | 
|PaintGrip|Produces Error|   | 
|RendererChanged|Produces Error|   | 

## ToolStripButton

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|Checked|Produces Error|   | 
|CheckOnClick|Produces Error|   | 
|CheckState|Produces Error|   | 
|DisplayStyle|Removed|   | 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|MergeAction|Removed|   | 
|Overflow|Removed|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftAutoMirrorImage|Removed|   | 
|TextAlign|Replaced with|TextAlignment| 
|TextDirection|Produces Error|   | 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|CheckedChanged|Produces Error|   | 
|CheckStateChanged|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 

## ToolStripLabel

|Properties|Action|RadControls Equivalent|
|---|---|---|
|ActiveLinkColor|Removed|   | 
|Alignment|Removed|   | 
|DisplayStyle|Removed|   | 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|IsLink|Removed|   | 
|LinkBehavior|Removed|   | 
|LinkVisited|Removed|   | 
|MergeAction|Removed|   | 
|Overflow|Removed|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftAutoMirrorImage|Removed|   | 
|TextAlign|Replaced with|TextAlignment| 
|TextDirection|Produces Error|   | 
|Visible|Replaced with|Visibility| 
|VisitedLinkColor|Removed|   | 


|Events|Action|RadControls Equivalent|
|---|---|---|
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 

## ToolStripSplitButton

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|DisplayStyle|Removed|   | 
|DropDownItems|Replaced with|Items| 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|MergeAction|Removed|   | 
|Overflow|Removed|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftAutoMirrorImage|Removed|   | 
|TextAlign|Replaced with|TextAlign| 
|TextDirection|Produces Error|   | 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|ButtonClick|Produces Error|   | 
|ButtonDoubleClick|Produces Error|   | 
|DropDownClosed|Produces Error|   | 
|DropDownOpening|Produces Error|   | 
|DropDownOpened|Produces Error|   | 
|DropDownItemClicked|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   |
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|HideDropDown|Produces Error|   | 
|ShowDropDown|Produces Error|   | 
|PerformButtonClick|Produces Error|   | 
|GetCurrentParent|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 

## ToolStripDropDownButton

|Properties|Action|RadControls Equivalent|
|---|---|---|
|DisplayStyle|Removed|   | 
|DropDownItems|Replaced with|Items| 
|ImageAlign|Replaced with|ImageAlignment| 
|RightToLeft|Replaced with|RightToLeft| 
|TextAlign|Replaced with|TextAlignment| 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|DropDownClosed|Produces Error|   | 
|DropDownOpening|Produces Error|   | 
|DropDownOpened|Produces Error|   | 
|DropDownItemClicked|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|HideDropDown|Produces Error|   | 
|ShowDropDown|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 

## ToolStripSeparator


|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|DisplayStyle|Removed|   | 
|ImageAlign|Replaced with|ImageAlignment| 
|MergeAction|Removed|   | 
|Overflow|Removed|   | 
|RightToLeft|Replaced with|RightToLeft| 
|TextAlign|Replaced with|TextAlignment| 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|BackColorChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|HideDropDown|Produces Error|   | 
|ShowDropDown|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 

## ToolStripComboBox


|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|AutoCompleteCustomSource|Produces Error|   | 
|AutoCompleteSource|Produces Error|   | 
|CausesValidation|Removed|   | 
|DisplayStyle|Removed|   | 
|DropDownStyle|Replaced with|DropDownStyle| 
|FlatStyle|Removed|   | 
|IntegralHeight|Removed|   | 
|Items|Replaced with|Items| 
|ImageAlign|Replaced with|ImageAlignment| 
|MergeAction|Removed|   | 
|Overflow|Removed|   | 
|RightToLeft|Replaced with|RightToLeft| 
|TextAlign|Replaced with|TextAlignment| 
|Sorted|Replaced with|DropDownListElement.SortStyle| 
|Visible|Replaced with|Visibility| 


|Events|Action|RadControls Equivalent|
|---|---|---|
|DropDown|Replaced with|PopupOpened| 
|DropDownClosed|Replaced with|PopupClosed| 
|DropDownStyleChanged|Produces Error|   | 
|TextUpdate|Produces Error|   | 
|Enter|Produces Error|   | 
|Leave|Produces Error|   | 
|Validating|Produces Error|   | 
|Validated|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

|Methods|Action|RadControls Equivalent|
|---|---|---|
|BeginUpdate|Produces Error|   | 
|CreateObjRef|Produces Error|   | 
|EndUpdate|Produces Error|   | 
|FindStringExact|Produces Error|   | 
|FindString|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 
|GetItemHeight|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|SelectAll|Produces Error|   | 

## ToolStripTextBox

|Properties|Action|RadControls Equivalent|
|---|---|---|
|DisplayStyle|Removed|   | 
|ImageAlign|Replaced with|ImageAlignment| 
|TextAlign|Replaced with|TextAlignment| 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|AcceptsTabChanged|Produces Error|   | 
|BorderStyleChanged|Produces Error|   | 
|HideSelectionChanged|Produces Error|   | 
|ModifiedChanged|Produces Error|   | 
|ReadOnlyChanged|Produces Error|   | 
|TextBoxTextAlignChanged|Produces Error|   | 
|Enter|Produces Error|   | 
|Leave|Produces Error|   | 
|Validating|Produces Error|   |
|Validated|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|InitializeLifetimeService|Produces Error|   | 
|Undo|Replaced with|TextBoxElement.TextBoxItem.Undo| 
