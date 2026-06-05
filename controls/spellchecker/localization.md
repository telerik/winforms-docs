---
title: Localization
page_title: Localization - RadSpellChecker
description: RadSpellChecker enables developers to add multilingual spell checking capabilities to their WinForms applications.
slug: winforms/spellchecker/localization
tags: localization
published: True
position: 5
previous_url: spellchecker-localization
---

# Localization

To localize **RadSpellChecker** to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadSpellCheckerLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

<snippet id='spellchecker-spellcheckerlocalization-myenglishlocalizationprovider-cs' />
<snippet id='spellchecker-spellcheckerlocalization-myenglishlocalizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='spellchecker-spellcheckerlocalization-localizespellchecker-cs' />
<snippet id='spellchecker-spellcheckerlocalization-localizespellchecker-vb' />



The code provided above illustrates the approach to be used to localize the __RadSpellChecker__ and is not intended as a full translation.
