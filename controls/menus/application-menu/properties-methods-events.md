---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadApplicationMenu
description: RadApplicationMenu is the Telerik counterpart of the application menu that displays controls used to perform actions on entire documents and forms, such as Save and Print. 
slug: winforms/menus/applicationmenu/properties-methods-events
tags: applicationmenu
published: True
position: 5
---

# Properties

|Property|Description|
|----|----|
|**DisplayStyle**|Specifies the logical combination of image and text primitives in the element.|
|**RightColumnItems**|Gets a collection representing the right column items of RadApplicationMenu.|
|**ButtonItems**|Gets a collection representing the button items of RadApplicationMenu.|
|**RightColumnWidth**|Gets or sets the right column width.|
|**ShowTwoColumnDropDownMenu**|Gets or sets the whether RadApplicationMenu will have TwoColumnDropDownMenu.|
|**ShowItemToolTips**|Gets or sets a value indicating whether ToolTips are shown for the RadItem objects contained in the RadControl.|
|**DropDownButtonElement**|Gets the instance of RadApplicationMenuButtonElement wrapped by this control. RadApplicationMenuButtonElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadApplicationMenu.|

# Methods
|Method|Description|
|----|----|
|DropDownButtonElement.**ShowDropDown**|Shows the drop down menu.|
|DropDownButtonElement.**HideDropDown**|Hides the drop down menu.|

# Events

|Event|Description|
|----|----|
|**DropDownOpening**|Fires when the drop down is about to be opened. It is a cancelable event.|
|**DropDownOpened**|Fires when the drop down is opened.|
|**DropDownClosed**|Fires when the drop down is closed.|

>note **RadApplicationMenu** is a derivative of **RadDropDownButton**. Hence, the properties, methods and events applicable for **RadDropDownButton** are applicable for **RadApplicationMenu**. Additional information is available in the [DropDownButton >> Properties, Methods and Events](https://docs.telerik.com/devtools/winforms/controls/buttons/dropdownbutton/properties-methods-events) help article.
 
# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radapplicationmenu.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radapplicationmenu.html#methods) 