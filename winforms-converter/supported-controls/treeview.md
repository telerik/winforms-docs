---
title: TreeView
page_title: DataGridView - Winforms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/treeview
tags: covert, winforms, datagridview
published: True
position: 1
---

# TreeView

The TreeView is converted to [RadTreeView]({%slug winforms/treeview%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|BorderStyle|Removed|   | 
|ContextMenuStrip|Produces Error|   | 
|DrawMode|Removed|   | 
|Indent|Replaced with|TreeIndent| 
|LabelEdit|Replaced with|AllowEdit| 
|RightToLeftLayout|Removed|   | 
|SelectedImageKey|Removed|   | 
|SelectedImageIndex|Removed|   | 
|ShowPlusMinus |Replaced with|ShowExpandCollapse|
|Scrollable|Removed|   | 
|StateImageList|Removed|   | 


|Methods|Action|RadControls Equivalent|
|---|---|---|
|HitTest(Point pt)|Produces Error|   | 
|Sort()|Produces Error|   | 

|Events|Action|RadControls Equivalent|
|---|---|---|
|AfterCheck|Replaced with|NodeCheckedChanged| 
|AfterCollapse|Replaced with|NodeExpandedChanged| 
|AfterExpand|Replaced with|NodeExpandedChanged| 
|AfterLabelEdit|Replaced with|Edited| 
|AfterSelect|Replaced with|SelectedNodeChanged| 
|BeforeCheck|Replaced with|NodeCheckedChanging| 
|BeforeCollapse|Replaced with|NodeExpandedChanging| 
|BeforeExpand|Replaced with|NodeExpandedChanging| 
|BeforeLabelEdit|Replaced with|Editing|
|BeforeSelect|Replaced with|SelectedNodeChanging| 
|DrawNode|Produces Error|   | 
|ItemDrag|Replaced with|ItemDrag| 
|NodeMouseHover|Replaced with|NodeMouseHover| 
|NodeMouseClick|Replaced with|NodeMouseClick| 
|NodeMouseDoubleClick|Replaced with|NodeMouseDoubleClick| 
|RightToLeftLayoutChanged|Removed|   | 


## TreeNode

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Bounds|Removed|   | 
|NodeFont|Removed|   | 
