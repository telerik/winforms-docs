---
title: Localization
page_title: Localization - RadChat
description: This article shows how you can localize all string used inside RadChat.
slug: winforms/chat/localization/localization
tags: localization
published: True
position: 0 
---

# Localization

To localize **RadChat** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.Localization__ namespace.

*  Start by creating a descendant of the **ChatLocalizationProvider** class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadChat Strings

<snippet id='chat-localization-myenglishlocalizationprovider-cs'/>
<snippet id='chat-localization-myenglishlocalizationprovider-vb'/>

 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='chat-localization-localizechat-cs'/>
<snippet id='chat-localization-localizechat-vb'/>



The code provided above illustrates the approach to be used to localize the **RadChat** and is not intended as a full translation.
        

