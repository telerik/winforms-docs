---
title: Word Wrap
page_title: Word Wrap - RadSyntaxEditor
description: This article documents the word-wrap functionality provided by the RadSyntaxEditor control.
slug: syntax-editor-features-word-wrap
tags: features, word,wrap
published: True
position: 7
---

# Word Wrap

As of **R1 2023**, the RadSyntaxEditor control supports word wrapping which enables users to view all text for a line that normally would have gone outside the viewport horizontally.

The functionality can be enabled by setting the `IsWordWrapEnabled` property to `True`.

#### Example 1: Setting font properties

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorGettingStarted.cs region=WordWrap}}
{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorGettingStarted.vb region=WordWrap}}

````C#

this.radSyntaxEditor1.IsWordWrapEnabled = true;  


````
````VB.NET

Me.RadSyntaxEditor1.IsWordWrapEnabled = True

````

#### RadSyntaxEditor with Word Wrapping

![WinForms RadSyntaxEditor Word Wrap](images/winforms-radsyntaxeditor-word-wrap.png)





 
