---
title: Selection Rectangle
page_title: Selection Rectangle | RadGridView
description: Selection Rectangle
slug: winforms/gridview/rows/selection-rectangle
tags: selection,rectangle
published: True
position: 10
previous_url: gridview-rows-selection-rectangle
---

# Selection Rectangle

The Rows in RadGridView can be selected by a translucent rectangle selection. You should set the __MultiSelect__ property to *true* and this will automatically enable the rectangle selection. The user just needs to perform a mouse drag operation on RadGridView. A translucent rectangle will be created to indicate the possible selection of rows or cells.

![gridview-rows-selection-rectangle 001](images/gridview-rows-selection-rectangle001.png)

Use the __ShowTranslucentSelectionRecatangle__ of the __GridTableElement__ to enable or disable the selection rectangle:

####  Disabling the selection rectangle 

{{source=..\SamplesCS\GridView\Rows\SelectionRectangle.cs region=selectionRectangle}} 
{{source=..\SamplesVB\GridView\Rows\SelectionRectangle.vb region=selectionRectangle}} 

````C#
((GridTableElement)this.radGridView1.TableElement).ShowTranslucentSelectionRectangle = false;

````
````VB.NET
DirectCast(Me.RadGridView1.TableElement, GridTableElement).ShowTranslucentSelectionRectangle = False

````

{{endregion}}
