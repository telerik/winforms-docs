---
title: Properties and Events
page_title: Properties and Events - WinForms BrowseEditor Control 
description: Get familiar with the public API that WinForms BrowseEditor offers.
slug: winforms/editors/browseeditor/properties-events
tags: browseditor, properties, events
published: True
position: 6 
---

# Properties

|Property|Description|
|----|----|
|Dialog (Obsolete)|Gets the dialog of the control. Use the **BrowseDialog** property and cast it to the actual dialog type.|
|BrowseDialog|Gets the browse dialog that will open upon pressing the browse button.|
|DialogType|Gets or sets the type of dialog to be opened when the browse button is pressed|
|Value|Gets or sets the value of the editor|
|ReadOnly|Determines if users can input text directly into the text field|

# Events

|Event|Description|
|----|----|
|DialogClosed|Fires after the dialog window is closed|
|ValueChanging|Fires right before the value is changed|
|ValueChanged|Fires after the editor`s value is changed|
|ReadOnlyChanged|Fires when the ReadOnly property value is changed|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radbrowseeditor.html#properties)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radbrowseeditor.html#events)