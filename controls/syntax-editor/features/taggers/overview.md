---
title: Overview
page_title: Taggers Overview - RadSyntaxEditor
description: RadSyntaxEditor works with the underlying document with the help of taggers. 
slug: syntax-editor-taggers-overview
tags: features, taggers
published: True
position: 0
---

# WinForms SyntaxEditor Overview

The **RadSyntaxEditor** control works with the underlying document with the help of taggers. Taggers are used to identify spans of text and assign them a specific tag if they match a specific condition. The identification process occurs in the **GetTags** method which can be overridden in a [custom tagger]({%slug syntax-editor-custom-taggers%}).

The matched tags are then processed by the [UI layers]({%slug syntax-editor-features-layers%}) which color the text or draw additional elements on screen.

>caption RadSyntaxEditor with a registered CSharpTagger

![WinForms RadSyntaxEditor with a registered CSharpTagger](images/syntax-editor-taggers-overview001.png)

## Predefined Taggers

**RadSyntaxEditor** comes with a number of predefined taggers and folding taggers:

* **CSharpTagger**: A tagger responsible for syntax highlighting in the C# programming language.
* **VisualBasicTagger**: A tagger responsible for syntax highlighting in the Visual Basic programming language.
* **JavaScriptTagger**: A tagger responsible for syntax highlighting in the JavaScript programming language.
* **XmlTagger**: A tagger responsible for syntax highlighting in the XML programming language.
* **SqlTagger**: A tagger responsible for syntax highlighting in the T-SQL (Transact-SQL) programming language.
* **BracketFoldingTagger**: A tagger responsible for creating collapsible (folding) regions in the code. Can be used for the JavaScript language.
* **CSharpFoldingTagger**: A tagger responsible for creating folding regions in C# code.
* **VisualBasicFoldingTagger**: A tagger responsible for creating folding regions in Visual Basic code.
* **XmlFoldingTagger**: A tagger responsible for creating collapsible (folding) regions in XML, XAML, and HTML code documents.
* **JavaScriptFoldingTagger**: A tagger class responsible for creating collapsible (folding) regions in JavaScript code documents.
* **TextSearchHighlightTagger**: A tagger that prepares a collection of TextHighlightTag for all occurrences of a given search word. The class exposes a **UpdateSearchWord** method used to determine the word that will be highlighted.
* **TextSearchUnderlineTagger**: A tagger that prepares a collection of UnderlineTag for all occurrences of a given search word. The class exposes a **UpdateSearchWord** method used to determine the word that will be underlined.
* **LineHighlightTagger**: A tagger that prepares a collection of TextHighlightTags for a collection of lines. The class exposes a HighlightLines method taking an IEnumerable<int> and is used to determine the lines that will be highlighted. The tagger also provides a **HighlightMode** property of type LineHighlightMode which has the following possible values:
    * **TextOnly**: Highlights only the text portion of the line. This is the default value.
    * **LineStartToTextEnd**: Highlights from the beginning of the line to the end of the text portion of the line.


## Register a Tagger

To be able to use these taggers in the **RadSyntaxEditor** control, you first need to register them in its **TaggersRegistry**. This registry keeps track of all the registered taggers. Through the **IsTaggerRegistered** method you can check whether a specific tagger is already registered.

#### Registering taggers

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.cs region=AddTaggers}}
{{source=..\SamplesVB\SyntaxEditor\SyntaxEditorLayers.vb region=AddTaggers}}

````C#
            CSharpTagger currentLanguageTagger = new Telerik.WinForms.Controls.SyntaxEditor.Tagging.Taggers.CSharpTagger(this.radSyntaxEditor1.SyntaxEditorElement);
            this.radSyntaxEditor1.TaggersRegistry.RegisterTagger(currentLanguageTagger);

            CSharpFoldingTagger foldingTagger = new Telerik.WinForms.Controls.SyntaxEditor.Taggers.CSharpFoldingTagger(this.radSyntaxEditor1.SyntaxEditorElement);
            foldingTagger.FoldingRegionDefinitions.Add(new FoldingRegionDefinition("#if", "#endif"));

````
````VB.NET

Dim currentLanguageTagger As CSharpTagger = New Telerik.WinForms.Controls.SyntaxEditor.Taggers.CSharpTagger(Me.RadSyntaxEditor1.SyntaxEditorElement)
Me.RadSyntaxEditor1.TaggersRegistry.RegisterTagger(currentLanguageTagger)
Dim foldingTagger As CSharpFoldingTagger = New Telerik.WinForms.Controls.SyntaxEditor.Taggers.CSharpFoldingTagger(Me.RadSyntaxEditor1.SyntaxEditorElement)
foldingTagger.FoldingRegionDefinitions.Add(New FoldingRegionDefinition("#if", "#endif"))
RadSyntaxEditor1.TaggersRegistry.RegisterTagger(foldingTagger)


````

{{endregion}} 

>note As of R2 2021 **RadSyntaxEditor** offers **ShouldTaggersProcessEntireLines** property that indicates whether the entire line should be processed by the taggers.

## See Also

* [How to Achieve Underline Text in RadSyntaxEditor]({%slug underline-text-in-syntax-editor%})





 
