---
title: Localization
page_title: Localizattion - RadColorDialog
description: RadColorDialog is a lightweight UI component that allows users to select from RGB or HEX color models.
slug: winforms/forms-and-dialogs/colordialog/localizattion
tags: localizattion
published: True
position: 5
previous_url: forms-and-dialogs-colordialog-localization 
---

# Localization

To localize __RadColorDialog__ form to display text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace. 	  
* Start by creating a descendant of the __ColorDialogLocalizationProvider__ class.
* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.
		  
Below is a sample implementation of a custom localization provider, which returns translations of the default values:

#### Localizing RadColorDialog strings 

<snippet id='colordialog-colordialog1-localization1-cs' />
<snippet id='colordialog-colordialog1-localization1-vb' />

 
 
To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Using the custom localization provider 

<snippet id='colordialog-colordialog1-localization2-cs' />
<snippet id='colordialog-colordialog1-localization2-vb' />

 
 

The code provided above illustrates the approach to be used to localize the __RadColorDialog__ and is not intended as a full translation.
        
