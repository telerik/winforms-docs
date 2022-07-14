---
title: PopupManager
page_title: PopupManager | Telerik Presentation Framework
description: Get started with the WinForms PopupManager class.
slug: winforms-tpf-popup-manager
tags: popupmanager, themes
published: True
position: 101
---

# PopupManager

The PopupManager class manages all opened popups in your application per UI thread.

## Properties

|Property|Description|
|---|---|
|__Hooked__|Gets a value indicating whether the popup manager has hooks installed. |
|__ClosePopupOnMouseWheel__|Gets or Sets a value indicating whether the popups will stop closing on MouseWheel. |
|__PopupCount__|Gets the count of the __IPopupControl__ instances currently registered in the PopupManager. |
|__LastActivatedPopup__|Getst the popup which was last activated. |
|__Default__|A static property that gets the only instance of the PopupManager class. Other instances can not be created. |

## Methods

|Method|Description|
|---|---|
|__AddPopup(IPopupControl form)__|Adds a popup form to the popups of the PopupManager and registers a message hook if the form provided is the first one. |
|__RemovePopup(IPopupControl form)__|Removes the provided popup from the popups of the PopupManager and unregisters the message hook if there are no more popups. |
|__ClosePopup(IPopupControl popup)__|Attempts to close an Telerik.WinControls.UI.IPopupControl implementation. |
|__CloseAll(RadPopupCloseReason reason)__|Closes all popups managed by the PopupManager. |
|__CloseAllToRoot(RadPopupCloseReason reason, IPopupControl leaf)__|Closes all popups from a leaf to the root. |
|__ContainsPopup(IPopupControl form)__|Checks if the PopupManager monitors the provided popup. |

## Example

All popup menus in the Telerik UI for WinForms suite are managed by a PopupManager which internally uses an __IMessageListener__ for the messages. You can disable the __PopupManager__ to handle the popup menu by removing the popup from class. The following solution shows how to remove a certain drop down from the PopupManager's default mouse handling by calling the PopupManager.Default.RemovePopup(your drop-down menu). 

{{source=..\SamplesCS\TPF\Popup_Manager.cs region=RemovePopup}} 
{{source=..\SamplesVB\TPF\Popup_Manager.vb region=RemovePopup}}
````C#

public void DoSomething()
{
	this.radDropDownButton1.DropDownOpened += RadDropDownButton1_DropDownOpened;
}

private void RadDropDownButton1_DropDownOpened(object sender, EventArgs e)
{
   PopupManager.Default.RemovePopup(this.radDropDownButton1.DropDownButtonElement.DropDownMenu);
}

````
````VB.NET

Public Sub DoSomething()
	AddHandler Me.radDropDownButton1.DropDownOpened, AddressOf RadDropDownButton1_DropDownOpened
End Sub

Private Sub RadDropDownButton1_DropDownOpened(ByVal sender As Object, ByVal e As EventArgs)
	PopupManager.Default.RemovePopup(Me.radDropDownButton1.DropDownButtonElement.DropDownMenu)
End Sub

````

{{endregion}} 

> The suggested above approach will need to be applied for each of the nested menu item's drop-down. Also, it would be necessary to take care of closing the popups, e.g. when an item is clicked.

# See Also

* [Custom Fonts]({%slug winforms/tpf/custom-fonts%})
