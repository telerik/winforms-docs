---
title: TileDragDropService
page_title: TileDragDropService - WinForms Panorama Control
description: Get familiar with the TileDragDropService supported by WinForms Panorama.
slug: winforms/panorama/tiledragdropservice
tags: panorama
published: True
position: 0 
---

# TileDragDropService

**TileDragDropService** is a derivative of **RadDragDropService**. Hence, it handles the whole drag and drop operation in **RadPanorama**.

By default, when the RadPanorama.**AllowDragDrop** property is set to *true*, the user is allowed to reorder the tiles between the groups or within the same group. When you start dragging a tile and you hover another tile it is shifted to the right. It is achieved by an **AnimatedPropertySetting** for the **CellPaddingProperty**.

![panorama-tiledragdropservice 001](images/panorama-tiledragdropservice001.gif)

The **AutoScrollOffset** property of the service gets or sets the offset from the edges of the control at which automatic scrolling starts. The service doesn't offer a specific public API that is different compared to the one offered by [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}). If you want to customize the default drag and drop behavior, you can refer to the [Tiles Drag and Drop]({%slug winforms/panorama/drag-and-drop%}) help article which demonstrates a sample approach how to accomplish tiles drag and drop functionality between two **RadPanorama** controls.

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Tiles Drag and Drop]({%slug winforms/panorama/drag-and-drop%})