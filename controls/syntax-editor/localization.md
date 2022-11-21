---
title: Localization
page_title: Localization - RadSyntaxEditor
description:   
slug: syntax-editor-localization
tags: syntax-editor
published: True
position: 4
---

# Localization

To localize **RadSyntaxEditor** to display control text and messages in a specific language:

- All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

- Start by creating a descendant of the **RadSyntaxEditorLocalizationProvider** class.

- Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

#### Localizing RadSyntaxEditor Strings

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLocalizing.cs region=Provider}} 
{{source=..\SamplesVB\SyntaxEditor\SyntaxEditorLocalizing.vb region=Provider}}

````C#



````
````VB.NET



```` 

{{endregion}}


To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLocalizing.cs region=Apply}}
{{source=..\SamplesVB\SyntaxEditor\SyntaxEditorLocalizing.vb region=Apply}}

````C#
 RadSyntaxEditorLocalizationProvider.CurrentProvider = new EnglishRadSyntaxEditorLocalizationProvider();   

````
````VB.NET
RadSyntaxEditorLocalizationProvider.CurrentProvider = New EnglishRadSyntaxEditorLocalizationProvider()

````

{{endregion}}

The code provided above illustrates the approach to be used to localize the **RadSyntaxEditor** and is not intended as a full translation.


 
