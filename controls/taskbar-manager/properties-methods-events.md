---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - Taskbar Manager
description: RadTaskbarManager is built on the Windows' notification system, making it easier for our customers to create and manage notifications.  
slug: taskbar-manager-properties-methods-events
tags: taskbar,manager, properties
published: True
position: 5 
CTAControlName: TaskbarManager
---

# RadTaskbarButton

## Properties

|__Property__|__Description__|
|__OwnerForm__|The form that is represented on the task bar.|
|__ThumbnailButtons__|Gets the thumbnail buttons collection.|
|__ThumbnailButtonsImageList__|Gets or sets the ImageList that contains the images displayed by the thumbnail buttons.|
|__OverlayIcon__|Gets or sets the overlay icon used to be displayed over the taskbar button.|
|__ProgressState__|Gets or sets the progress state displayed over the taskbar button.|
|__ProgressPercentages__|Gets or sets the progress value displayed over the taskbar button in percents.|
|__ClipRectangle__|Gets or sets the clip rectangle of the thumbnail preview. Note that when this property is assigned the __ClipControl__ property will be reset.|
|__ClipControl__|Gets or sets the clip control of the thumbnail preview.|
|__ThumbnailTooltip__|Gets or sets the thumbnail toltip text.|

## Events

|__Event__|__Description__|
|__ThumbnailButtonClick__|Occurs when a __RadThumbnailButton__ has been clicked.|

ThumbnailButtonClick

# RadTaskbarManager

### Methods

|__Method__|__Description__|
|----|----|
|__Flash()__|Flashes the specified window. It does not change the active state of the window.|
|__FlashUntilActive()__|Flashes the specified window until it is activated. Note that if the window is currently active the flash will not begin.|
|__StopFlash()__|Stops the flashing of the specified window.|
|__FlashCore()__|Flashes the specified window. It does not change the active state of the window.|
|__SetOverlayIcon()__|Applies an overlay to a taskbar button to indicate application status or a notification to the user.|
|__SetProgressState()__|Sets the type and state of the progress indicator displayed on a taskbar button.|
|__SetProgressValue()__|Displays or updates a progress bar hosted in a taskbar button to show the specific percentage completed of the full operation.|
|__SetThumbnailClip()__|Selects a portion of a window's client area to display as that window's thumbnail in the taskbar.|
|__SetThumbnailTooltip()__|Specifies or updates the text of the tooltip that is displayed when the mouse pointer rests on an individual preview thumbnail in a taskbar button flyout.|
|__ThumbBarSetImageList()__|Specifies an image list that contains button images for a toolbar embedded in a thumbnail image of a window in a taskbar button flyout.|
|__MarkFullscreenWindow()__|Marks a window as full-screen.|
|__AddTab()__|Adds an item to the taskbar.|
|__DeleteTab()__|Deletes an item from the taskbar.|
|__ActivateTab()__|Activates an item on the taskbar. The window is not actually activated; the window's item on the taskbar is merely displayed as active.|
|__RegisterTab()__|Informs the taskbar that a new tab or document thumbnail has been provided for display in an application's taskbar group flyout.|
|__UnregisterTab()|Removes a thumbnail from an application's preview group when that tab or document is closed in the application.|
|__SetTabProperties()__|Allows a tab to specify whether the main application frame window or the tab window should be used as a thumbnail or in the peek feature under certain circumstances.|
|__SetTabOrder()__|Inserts a new thumbnail into a tabbed-document interface (TDI) or multiple-document interface (MDI) application's group flyout or moves an existing thumbnail to a new position in the application's group.|
|__SetTabActive()__|Informs the taskbar that a tab or document window has been made the active window.|
|__SetActiveAlt()__|Marks a taskbar item as active but does not visually activate it.


# See Also

* [Getting Started]({%slug taskbar-manager-getting-started%})
* [Design Time]({%slug taskbar-manager-design-time%})
 
        
