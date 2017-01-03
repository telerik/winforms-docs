---
title: Properties and Methods 
page_title: Properties and Methods | RadPanorama
description: RadPanorama is a control that displays elements of type RadTileElement in a mosaic manner.
slug: winforms/panorama/settings
tags: settings
published: True
position: 5
previous_url: panorama-settings
---

# Properties

|Property|Description|
|----|----|
|**MouseWheelBehavior**|Gets or sets the way that RadPanorama should handle mouse wheel input.|
|**AutoArrangeNewTiles**|Gets or sets a value that indicates whether the newly added tiles should be automatically arranged.|
|**EnableZooming**|Enables or Disables the build in zoom functionality|
|**MinimumColumns**|Gets or sets the minimum number of columns that the view can be reduced to.|
|**AllowDragDrop**|Gets or sets a value indicating whether reordering of tiles via drag and drop is allowed.|
|**ShowGroups**|Gets or sets a value indicating whether the groups or the items should be displayed.|
|**ScrollingBackground**|Gets or sets a value indicating whether the background image should be scrolled along with the tiles.|
|**ScrollBarAlignment**|Gets or sets the position on which the scroll bar should be aligned.|
|**ScrollBarThickness**|Gets or sets the thickness of the scroll bar.|
|**PanoramaElement**|Gets the RadPanoramaElement that represents the main element of the control.|
|**PanelImage**|Gets or sets the image that is displayed in the background.|
|**PanelImageSize**|Gets or sets the size of the image that is displayed in the background.|
|**ColumnsCount**|Gets or sets the current number of columns.|
|**RowsCount**|Gets or sets the number of rows.|
|**CellSize**|RadPanorama uses a GridLayout element to display its tiles. By setting the CellSize property, you can change the default size of a single cell which is also the default size of a tile.|
|**Items**|Gets a collection of RadTileElement objects that represent the tiles that are displayed.|
|**Groups**|Gets a collection of RadTileElement objects that represent the tiles that are displayed.|

# RadPanoramaElement's Properties

|Property|Description|
|----|----|
|**ZoomedOut**| Indicates whether the view is zoomed out.|
|**ScrollBar**|Gets the scroll bar of the view.|
|**TileLayout**|Gets the layout that arranges the tiles in ungrouped mode.|
|**GroupLayout**|Gets the layout that arranges the tile groups.|
|**DragDropService**|Gets or sets the RadDragDropService that is responsible for the drag-drop reorder of tiles.|
|**ScrollService**|Gets the ScrollService that is responsible for kinetic scrolling behavior with the mouse pointer.|

# RadTileElement's Properties

|Property|Description|
|----|----|
|**Column**|Gets the zero-based index of the column in which the tile should be arranged.|
|**Row**|Gets the zero-based index of the row in which the tile should be arranged.|
|**RowSpan**|Gets or sets the number of cells that the tile should occupy in a column.|
|**ColSpan**|Gets or sets the number of cells that the tile should occupy in a row.|
|**CellPadding**|Gets or sets the padding according to the currently occupied cell.|

>caution **RadPanorama** uses dynamic number of columns, so you can set the __Column__ property of a tile with a value, greater than the __ColumnsCount__ value. However, setting the __Row__ property with a value, greater than the __RowsCount__ value, will result in an exception.
>

# RadLiveTileElement's Properties

**RadLiveTileElement** is a derivative of **RadTileElement**. Hence, the listed properties above are relevant for the **RadLiveTileElement** as well.

|Property|Description|
|----|----|
|**ContentChangeInterval**|Gets or sets the interval at which the content of RadLiveTileElement changes.|
|**EnableAnimations**|Gets or sets a value indicating whether the animations are enabled.|
|**AnimationFrames**|Gets or sets the number of frames of the transition animation.|
|**AnimationInterval**|Gets or sets the interval between each frame of the transition animation.|
|**Items**|Gets a collection of RadElement objects that represent the content items of the RadLiveTileElement.|
|**TransitionType**|Gets or sets the type of the transition animation.|
|**CurrentItem**|Gets or sets the currently displayed item.|

# TileGroupElement's Properties

|Property|Description|
|----|----|
|**MinimumColumns**|Gets or sets the minimum number of columns that the view can be reduced to.|
|**HeaderHeight**|Gets or sets the height of the group title.|
|**Items**|Gets the items collection that belong to this group.|
|**ContentElement**|Gets the layout panel that arranges the tiles.|
|**ColumnsCount**|Gets or sets the current number of columns.|
|**RowsCount**|Gets or sets the number of rows.|
|**CellSize**|Gets or sets the size of a single cell.|

# RadPanoramaElement's Methods

|Method|Description|
|----|----|
|**ScrollView(int offset)**|Scrolls the view with a specified offset.|
|**ScrollView(int offset, bool buffered)**|Scrolls the view with a specified offset. If the method is called too often, set the *buffered* to *true* to improve performance.|
|**UpdateViewOnScroll**| Updates the view according to the current value of the scroll bar.|
|**ZoomOut**|Zooms the view out.|
|**ZoomIn**|Zooms the view in towards the specified location.|
|**ScrollToItem(RadTileElement tile)**|Scrolls to the specified tile.|
|**ScrollToItem(RadTileElement tile, int desiredOffset)**|Scrolls to the specified tile with the desired offset.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radpanorama.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radpanorama.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radpanorama.htm)
