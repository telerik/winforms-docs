---
title: Selection Rectangle
page_title: Selection Rectangle
description: Selection Rectangle
slug: gridview-rows-selection-rectangle
tags: selection,rectangle
published: True
position: 10
---

# Selection Rectangle



## 

Rows in RadGridView can be selected by a translucent rectangle selection. You should set the __MultiSelect__ property to *true and* this will automatically enable the rectangle selection. The user just needs to perform a mouse drag operation on RadGridView. A translucent rectangle will be created to indicate the possible selection of rows or cells.

![gridview-rows-selection-rectangle 001](images/gridview-rows-selection-rectangle001.png)



Use the __ShowTranslucentSelectionRecatangle__ of the __GridTableElement__ to enable or disable the selection rectangle:

#### __[C#] Disabling the selection rectangle__

{{region selectionRectangle}}
	            ((GridTableElement)this.radGridView1.TableElement).ShowTranslucentSelectionRectangle = false;
	{{endregion}}



#### __[VB.NET] Disabling the selection rectangle__

{{region selectionRectangle}}
	        DirectCast(Me.RadGridView1.TableElement, GridTableElement).ShowTranslucentSelectionRectangle = False
	{{endregion}}


