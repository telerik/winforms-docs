---
title: StatusStrip
page_title: StatusStrip - Winforms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/statusstrip
tags: covert, winforms, statusstrip
published: True
position: 1
---

# StatusStrip

The StatusStrip is converted to [RadStatusBar]({%slug winforms/forms-and-dialogs/statusstrip%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AllowItemReorder|Removed|   | 
|AllowMerge|Removed|   | 
|GripMargin|Removed|   | 
|GripStyle|Replaced with|StatusBarElement.GripStyle| 
|LayoutStyle|Produces Error|   | 
|RenderMode|Removed|   | 
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
|PaintGrip|Produces Error|   | 
|RendererChanged|Produces Error|   | 

## ToolStripProgressBar

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|DisplayStyle|Removed|   | 
|MarqueeAnimationSpeed|Removed|   | 
|MergeActionRemoved|   | 
|MergeIndex|Removed|   | 
|Overflow|Removed|   | 
|Owner|Produces Error|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftLayout|Removed|   | 
|Style|Produces Error|   | 
|Visible|Replaced with|Visibility| 
|Value|Replaced with|Value1| 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetCurrentParent|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|Increment|Replaced with|IncrementValue1()| 
|PerformStep|Replaced with|PerformStepValue1()| 


|Events|Action|RadControls Equivalent|
|---|---|---|
|BackColorChanged|Produces Error|   | 
|Enter|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|Leave|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftLayoutChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   | 

## ToolTabStripLabel

|Properties|Action|RadControls Equivalent|
|---|---|---|
|ActiveLinkColor|Removed|   | 
|BackgroundImage|Removed|   | 
|BackgroundImageLayout|   |   | 
|BorderSides|Removed|   | 
|BorderStyle|Removed|   | 
|DisplayStyle|Removed|   | 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|ImageTransparentColor|Removed|   | 
|IsLink|Removed|   | 
|LinkBehavior|Removed|   | 
|LinkColor|Removed|   | 
|LinkVisited|Removed|   | 
|MergeAction|Removed|   | 
|MergeIndex|Removed|   | 
|Overflow|Removed|   | 
|Owner|Produces Error|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftAutoMirrorImage|Removed|   | 
|Spring|Removed|   | 
|TextAlign|Replaced with|TextAlignment| 
|TextDirection|Produces Error|| 
|Visible|Replaced with|Visibility| 
|VisitedLinkColor|Removed|   | 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
|GetCurrentParent|Produces Error|   | 

|Events|Action|RadControls Equivalent|
|---|---|---|
|BackgroundImageLayout|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|ForeColorChanged|Produces Error|   | 
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 
|VisibleChanged|Produces Error|   |  

## ToolStripDropDownButton

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|BackgroundImage|Removed|   | 
|BackgroundImageLayout|Removed|   | 
|DisplayStyle|Removed|   | 
|DropDownItems|Replaced with|Items| 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|ImageTransparentColor|Removed|   | 
|MergeAction|Removed|   | 
|MergeIndex|Removed|   | 
|Owner|Produces Error|   | 
|Overflow|Removed|   | 
|RightToLeftAutoMirrorImage|Removed|   | 
|ShowDropDownArrow|Replaced with|ShowArrow| 
|TextDirection|Produces Error|   | 
|RightToLeft|Replaced with|RightToLeft| 
|TextAlign|Replaced with|TextAlignment| 
|Visible|Replaced with|Visibility| 

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
|GetCurrentParent|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 

## ToolStripSplitButton

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Alignment|Removed|   | 
|BackgroundImage|Removed|   | 
|BackgroundImageLayout|Removed|   | 
|DisplayStyle|Removed|   | 
|DropDownButtonWidth|Removed|   | 
|DropDownItems|Replaced with|Items| 
|ImageAlign|Replaced with|ImageAlignment| 
|ImageScaling|Removed|   | 
|ImageTransparentColor|Removed|   | 
|MergeAction|Removed|   | 
|MergeIndex|Removed|   | 
|Overflow|Removed|   | 
|Owner|Produces Error|   | 
|RightToLeft|Replaced with|RightToLeft| 
|RightToLeftAutoMirrorImage|Removed|   | 
|TextAlign|Replaced with|TextAlign| 
|TextDirection|Produces Error|   | 
|Visible|Replaced with|Visibility| 

|Events|Action|RadControls Equivalent|
|---|---|---|
|ButtonClick|Produces Error|   | 
|ButtonDoubleClick|Produces Error|   | 
|BackColorChanged|Produces Error|   | 
|DisplayStyleChanged|Produces Error|   | 
|DropDownItemClicked|Produces Error|   | 
|ForeColorChanged|Produces Error|   |
|LocationChanged|Produces Error|   | 
|OwnerChanged|Produces Error|   | 
|Paint|Produces Error|   | 
|RightToLeftChanged|Produces Error|   | 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|CreateObjRef|Produces Error|   | 
|GetCurrentParent|Produces Error|   | 
|GetLifetimeService|Produces Error|   | 
|GetPreferredSize|Produces Error|   | 
