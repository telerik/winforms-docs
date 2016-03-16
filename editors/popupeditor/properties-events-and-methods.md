---
title: Properties, Events and Methods
page_title: Properties, Events and Methods | UI for WinForms Documentation
description: Properties, Events and Methods
slug: winforms/editors/popupeditor/properties,-events-and-methods
tags: properties,,events,and,methods
published: True
position: 4
previous_url: editors-popupeditor-properties-and-events
---

# Properties, Events and Methods



This article describes the most commonly used properties, events and methods.

## Properties

* __AssociatedControl:__ this property should be used for assigning of the __RadPopupContainer__ that will be visible in the drop down.
            

* __DropDownMinSize:__ Gets or sets the popup minimum size.
            

* __DropDownMaxSize:__ Gets or sets the popup maximum size.
            

* __ShowTextBox:__ Indicates if the text box will be visible.
            

* __TextBoxElement:__ Gives access to the underlying text box.
            

* __DropDownStyle:__ Gets or sets the drop down style. The possible values are *DropDown* and *DropDownList*.
            

* __Popup:__ Gives you access to the popup instance.
            

* __PopupForm:__ Gives you access to the underlying __RadPopupControlBase__ instance.
            

* __PopupEditorElement:__ Allows you to access the editor elements and change its properties.
            

* __Text:__ Gets or sets the text of the TextBoxElement.
            

* __DropDownSizingMode:__ Controls the sizing grips configuration. The following values can be used:
            

	1. __UpDownAndRightBottom:__ The both sizing grips are visible.
                

	1. __UpDown:__ The middle sizing grip is visible, the popup can be resized vertically.
                

	1. __RightBottom:__ The sizing grip in the right bottom part of the popup is visible. The popup can be resized in all directions.
                

	1. __None:__ The popup cannot be resized, no sizing grips are visible.
                

## Events

* __PopupOpening:__ Fires before the popup is opened.
            

* __PopupOpened:__ Fires after the popup is opened.
            

* __PopupClosing:__ Fires before the popup is closed.
            

* __PopupClosed:__ Fires after the popup is closed.
            

## Methods
      

* __ClosePopup:__ This method can be used for closing the popup, it has two overrides. The first one does not take any parameters. The second is taking __RadPopupCloseReason__ as parameter. The specified reason will be passed as an argument to the closing events. The method can be used as follows:

#### Close Popup 

{{source=..\SamplesCS\Editors\PopupEditor\PopupEditorCode.cs region=close}} 
{{source=..\SamplesVB\Editors\PopupEditor\PopupEditorCode.vb region=close}} 

````C#
radPopupEditor1.PopupEditorElement.ClosePopup(RadPopupCloseReason.CloseCalled);

````
````VB.NET
radPopupEditor1.PopupEditorElement.ClosePopup(RadPopupCloseReason.CloseCalled)

````

{{endregion}} 
 
* __ShowPopup:__ This method can be used for programmatically showing the popup.

#### Show Popup 


{{source=..\SamplesCS\Editors\PopupEditor\PopupEditorCode.cs region=show}} 
{{source=..\SamplesVB\Editors\PopupEditor\PopupEditorCode.vb region=show}} 

````C#
radPopupEditor1.PopupEditorElement.ShowPopup();

````
````VB.NET
radPopupEditor1.PopupEditorElement.ShowPopup()

````

{{endregion}} 
 

# See Also

 * [PopupContainer]({%slug winforms/editors/popupeditor/popupcontainer%})
