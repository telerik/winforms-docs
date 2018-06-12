---
title: Localization
page_title: Localization | RadMarkupDialog
description: This article shows how one ca localize the strings used in RadMarkupDialog.
slug: winforms/tpd/markup-dialog/localization
tags: localization 
published: True
position: 1
---

# Localization

To localize RadMarkupDialog to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __RadMarkupEditorLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.
 
Below is a sample implementation of an English localization provider:

#### Localizing RadGridView Strings

{{source=..\SamplesCS\TPF\RadMarkupDialogForm.cs region=CustomProvider}} 
{{source=..\SamplesVB\TPF\RadMarkupDialogForm.vb region=CustomProvider}} 

{{endregion}}
To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TPF\RadMarkupDialogForm.cs region=ChangeProvider}} 
{{source=..\SamplesVB\TPF\RadMarkupDialogForm.vb region=ChangeProvider}} 

{{endregion}}

The code provided above illustrates the approach to be used to localize the __RadGridView__ and is not intended as a full translation.
        
# See Also
* [Markup Dialog]({%slug winforms/telerik-presentation-framework/radmarkupdialog%})