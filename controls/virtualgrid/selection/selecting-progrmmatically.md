---
title: Selecting Cells Programmatically
page_title: Selecting Cells Programmatically | RadVirtualGrid
description: This article shows how you can manipulate the selection in the code behind.
slug: winforms/virtualgrid/selection/selecting-cells-programmatically
tags: virtualgrid, selecting, cells, programmatically
published: True
position: 2
---

# Selecting Cells Programmatically

## Single Cell Select

You can use the following method to select a cell in the code:

{{source=..\SamplesCS\VirtualGrid\VirtualGridSelection.cs region=changeCurentCell}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridSelection.vb region=changeCurentCell}}
````C#
this.radVirtualGrid1.SelectCell(5, 2);

````
````VB.NET
Me.radVirtualGrid1.SelectCell(5, 2)

````

{{endregion}}


## Multiple Cells Select

You can select multiple cells with code as well. This can be achieved by using the __BeginSelection__ and __ExtendCurrentRegion__ methods. For example:

{{source=..\SamplesCS\VirtualGrid\VirtualGridSelection.cs region=selectMultipleCells}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridSelection.vb region=selectMultipleCells}}
````C#
radVirtualGrid1.VirtualGridElement.Selection.BeginSelection(3, 1, radVirtualGrid1.MasterViewInfo, true);
radVirtualGrid1.VirtualGridElement.Selection.ExtendCurrentRegion(6, 3);

````
````VB.NET
radVirtualGrid1.VirtualGridElement.Selection.BeginSelection(3, 1, radVirtualGrid1.MasterViewInfo, True)
radVirtualGrid1.VirtualGridElement.Selection.ExtendCurrentRegion(6, 3)

````

{{endregion}}





# See Also
* [Multiple Selection]({%slug winforms/virtualgrid/selection/multiple-selection%})

* [Selection]({%slug winforms/virtualgrid/selection/selection%})

