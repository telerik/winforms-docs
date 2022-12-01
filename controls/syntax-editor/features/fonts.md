---
title: Fonts
page_title: Fonts - RadSyntaxEditor
description: RadSyntaxEditor responds to changes in its font properties just as any other WinForms control. 
slug: syntax-editor-features-fonts
tags: features, fonts
published: True
position: 7
---

# Fonts

**RadSyntaxEditor** responds to changes in its font properties just as any other WinForms control. You can modify the font size and family of the control through the **EditorFontSize** and **EditorFontFamily** properties as demonstrated in **Example 1**.

#### Example 1: Setting font properties

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.cs region= Font}}
{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.vb region= Font}}

````C#

this.radSyntaxEditor1.SyntaxEditorElement.EditorFontSize = 18f;
this.radSyntaxEditor1.SyntaxEditorElement.EditorFontFamily = new Telerik.WinControls.SyntaxEditor.UI.FontFamily("TimesNewRoman");
         

````
````VB.NET
Me.RadSyntaxEditor1.SyntaxEditorElement.EditorFontSize = 18.0F
Me.RadSyntaxEditor1.SyntaxEditorElement.EditorFontFamily = New Telerik.WinControls.SyntaxEditor.UI.FontFamily("TimesNewRoman")

````

These properties, however, will be applied to the line numbers, editor presenter and intelliprompt parts of the control.

![WinForms RadSyntax-Editor syntax-editor-features-fonts001](images/syntax-editor-features-fonts001.png)

## Monospaced Font Optimization

When the used font is **Consolas**, **Courier New** or **Lucida Console**, you can benefit from the monospaced font optimization to boost the performance of the control. To enable this optimization, you need to set the **UseMonospacedFontOptimization** property to *true* for **RadSyntaxEditorElement**.

#### Example 2: Enabling monospaced font optimization

{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.cs region= Optimization}}
{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.vb region= Optimization}}

````C#

this.radSyntaxEditor1.SyntaxEditorElement.UseMonospacedFontOptimization = true;         

````
````VB.NET
Me.RadSyntaxEditor1.SyntaxEditorElement.UseMonospacedFontOptimization = True

````





 
