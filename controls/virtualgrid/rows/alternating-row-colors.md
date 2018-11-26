---
title: Alternating Row Color
page_title: Alternating Row Color | RadVirtualGrid
description: This article show how you can enable and customize the Alternating Row Color.
slug: winforms/virtualgrid/rows/alternating-row-colors
tags: virtualgrid, rows, alternating, color
published: True
position: 2
---

# Alternating Row Color

__RadVirtualGrid__ supports an alternating row color. It can be enabled by simply setting the __EnableAlternatingRowColor__ to *true*.

>caption Fig.1 Alternating Row color
![virtualgrid-rows-alternating-row-color001](images/virtualgrid-rows-alternating-row-color001.png)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridRowsAlternatingRownColor.cs region=Settings}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridRowsAlternatingRownColor.vb region=Settings}} 

````C#
this.radVirtualGrid1.EnableAlternatingRowColor = true;
this.radVirtualGrid1.TableElement.AlternatingRowColor = Color.LightBlue;

````
````VB.NET
Me.RadVirtualGrid1.EnableAlternatingRowColor = True
Me.RadVirtualGrid1.TableElement.AlternatingRowColor = Color.LightBlue

````

{{endregion}}

# See Also
* [Formatting Data Rows]({%slug winforms/virtualgrid/rows/formatting-data-rows%})

* [Formatting System Rows]({%slug winforms/virtualgrid/rows/formatting-system-rows%})

* [Pinned Rows]({%slug winforms/virtualgrid/rows/pinned-rows%})

* [Resizing Rows Programmatically]({%slug winforms/virtualgrid/rows/resizing-rows-programmatically%})

* [System Rows]({%slug winforms/virtualgrid/rows/system-rows%})

