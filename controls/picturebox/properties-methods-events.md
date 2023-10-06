---
title: Properties and Events
page_title: Properties and Events - RadPictureBox
description: Get familiar with the public API of the WinForms RadPictureBox control.
slug: radpicturebox-properties-methods-events
tags: listview
published: True
position: 3
---

# Properties and Events

This article provides reference tables with the [Properties](#properties), [Methods](#methods) and [Events](#events) in RadPictureBoxElement.

## Properties

|Property|Description|
|----|----| 
|**TopPanel**|Gets or sets a value indicating whether column names which differ only in the casing are allowed.|
|**BottomPanel**|Gets the bottom panel element. This panel allows adding buttons label and other elements in three collections - left, center and right items.|
|**LeftPanel**| Gets the left panel element. This panel allows adding buttons label and other elements in three collections - top, center and bottom items.|
|**RightPanel**|  Gets the right panel element. This panel allows adding buttons label and other elements in three collections - top, center and bottom items.|
|**PanelOverflowMode**| Gets or sets a value indicating how the panels are positioned.|
|**PanelDisplayMode**| Gets or sets a value indicating how the panels are displayed. The possible options are: always or on mouse hover.|
|**AllowPanelAnimations**| Gets or sets a value indicating whether to show animations when showing and hiding panels. Note that animations are applied only when PanelDisplayMode is set to OnMouseHover.|
|**ZoomProperties**| Gets the properties responsible for the zoom operations.|
|**NoPictureStack**| Gets the Telerik.WinControls.Layouts.StackLayoutPanel that is displayed when there is no image(raster or vector) assigned.|
|**NoPictureImageElement**| Gets the element that holds the image visible when there is no image(raster or vector) assigned.|
|**NoPictureTextElement**| Gets the element that holds the text visible when there is no image(raster or vector) assigned.|
|**HorizontalScrollBar**| Gets the horizontal scrollbar element.|
|**VerticalScrollBar**| Gets the vertical scrollbar element.|
|**ShowScrollBars**| Gets or sets a value indicating whether to display scrollbars when the displayed image is larger than the element.|
|**DefaultText**| Gets or sets the text which is displayed when the Telerik.WinControls.UI.LightVisualElement.Image and Telerik.WinControls.UI.LightVisualElement.SvgImage properties are not specified.|
|**DefaultImage**| Gets or sets the raster image which is displayed when the Telerik.WinControls.UI.LightVisualElement.Image and Telerik.WinControls.UI.LightVisualElement.SvgImage properties are not specified.|
|**DefaultSvgImage**| Gets or sets the vector image which is displayed when the Telerik.WinControls.UI.LightVisualElement.Image and Telerik.WinControls.UI.LightVisualElement.SvgImage properties are not specified.|
|**DefaultSvgImageXml**| Gets or sets string XML of the the vector image which is displayed when the Telerik.WinControls.UI.LightVisualElement.Image and Telerik.WinControls.UI.LightVisualElement.SvgImage properties are not specified.|
|**RadImageLayout**| Specifies how the image is positioned on the element.|
|**ImageAlignment**| Gets or sets the alignment of the image on the drawing surface. Default is TopLeft. Note that this property is respected only when the ImageLayout is set to None.|
|**ContextMenuEnabled**| Gets or sets a value indicating whether to display context menu on right mouse click.|
|**ContextMenu**| Gets the context menu.|
|**ContextMenuProperties**| Gets the context menu related properties.|
|**ImageEditorDialog**| Gets or sets the dialog responsible for image editing.|
|**ReadOnly**| Determines if users can only view the image with no interaction: zoom and context menu are not available when read only is true.|

## Events

|Event|Description|
|----|----| 
|**PanChanged**| Occurs when the PositionOffset property of Telerik.WinControls.UI.PictureBoxCanvasElement is changed.|
|**ZoomChanged**| Raised after the ZoomFactor is changed.|
|**ContextMenuItemClick**| Occurs when an item in the context menu is clicked.|
|**ContextMenuOpening**| Occurs when the context menu is opening.|
|**ContextMenuClosing**| Occurs when the context menu is closing.|
|**ContextMenuOpened**| Occurs when the context menu is opened.|
|**ContextMenuClosed**| Occurs when the context menu is closed.|
|**ImageEditorOpening**| Occurs when the image is about to be edited in the Telerik.WinControls.UI.RadPictureBoxElement.ImageEditorDialog.Cancellable.|
|**ImageEdited**|  Occurs when the image has been edited by the Telerik.WinControls.UI.RadPictureBoxElement.ImageEditorDialog and the user has accepted the changes. Can be handled. Note that this event fill be fired always when the user clicks the OK button of the dialog, even if there are no changes in the image.|
|**ImageLoaded**| Occurs when a raster or vector(SVG) image has been loaded by the user.|
|**ImageSaved**| Occurs when the displayed image has been saved by the user.|

## See Also

* [Overview]({%slug radpicturebox-overview%})
* [Getting Started]({%slug radpicturebox-getting-started%})


