---
title: Properties and Methods
page_title: Properties and Methods | RadShortcut
description: Almost each application uses the so called “Shortcuts” – a keyboard combination that triggers a specific action.
slug: winforms/shortcuts/properties-methods
tags: shortcuts
published: True
position: 4 
---

# Properties and Methods 

You can find listed below all properties and methods related to **RadShortcut**.

## Properties

|Property|Description|
|----|----|
|**KeyMappings**|Gets a list with all the Keys that form the shortcut combination. E.g. we may have M+O and a Modifier CTRL, then the valid shortcut will be CTRL+M+O.|
|**Modifiers**|Gets or sets the Keys value that describes the modifiers for the shortcut.|
|**Ctrl**|Determines whether the Control modifier key is applied.|
|**Alt**|Determines whether the Alt modifier key is applied.|
|**Shift**|Determines whether the Shift modifier key is applied.|

## Methods

|Method|Description|
|----|----|
|**IsShortcutCombination**| Determines whether the specified Keys are part of modifiers keys.|
|**IsPartialShortcutCombination**|Determines whether the specified Keys are part of a shortcut combination. E.g. if we have a key mapping CTRL+M+O and the provided keys are CTRL+M, the method will return true.|
|**IsMappingKey**|Determines whether the specified key is present in the RadDockShortcut KeyMappings list.|
|**GetDisplayText**|Gets the human-readable represention of the current key settings.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.radshortcut.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.radshortcut.html#methods)



