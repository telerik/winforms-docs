---
title: Localization
page_title: Localization | RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-localization
tags: radtabbedform
published: True
position: 0
---

# Localization

To localize __RadTabbedForm__ to display any text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTabbedFormControlLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\Forms_And_Dialogs\TabbedFormCode.cs region=Localization}} 
{{source=..\SamplesVB\Forms_And_Dialogs\TabbedFormCode.vb region=Localization}} 

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Forms_And_Dialogs\TabbedFormCode.cs region=ChangeProvider}} 
{{source=..\SamplesVB\Forms_And_Dialogs\TabbedFormCode.vb region=ChangeProvider}} 

{{endregion}} 