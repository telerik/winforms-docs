---
title: Selection
page_title: Selection - RadSyntaxEditor
description: RadSyntaxEditor is a useful text editor control which provides built-in syntax highlighting and code editing experience
slug: syntax-editor-features-selection
tags: selection
published: True
position: 2
---

# Selection

The **RadSyntaxEditor** control supports not only selection via the UI but also exposes API to work with the selection programmatically. In addition, the selection can be controlled via the keyboard by a number of key combinations. You can also disable selection in the control if your business scenario demands it.

## UI Selection

The user is able to select the content inside **RadSyntaxEditor** in the same way as in Visual Studio. This is done by clicking on the desired position and dragging to the desired end of the selection. 

#### Figure 1: RadSyntaxEditor with selected text

![WinForms RadSyntaxEditor with selected text](images/selection001.png)

The UI selection is enabled by default. To enable or disable it use the **IsSelectionEnabled** property

#### Enable/Disable selection
<snippet id='syntax-editor-syntaxeditorgettingstarted-enableselection-cs' />
<snippet id='syntax-editor-syntaxeditorgettingstarted-enableselection-vb' />



## Keyboard Combinations

Users can also select text by using their keyboard. Here's a list of the supported key combinations.

#### Table 1: Hotkeys supported by the RadSyntaxEditor and their actions

|**Hotkeys**|**Action**|
|----|----|
|Shift + Right arrow|Extends selection one position forward.|
|Shift + Left arrow|Extends selection one position backward.|
|Shift + Up arrow|Extends selection to the same position on the previous line.|
|Shift + Down arrow|Extends selection to the same position on the next line.|
|Shift + Home|Extends selection to the start of the current line.|
|Shift + End|Extends selection to the end of the current line.|
|Ctrl + Shift + Left arrow|Extends selection to the current word start position.|
|Ctrl + Shift + Right arrow|Extends selection to the current word end position.|
|Ctrl + A|Selects the entire document.|

## Customize the Selection

You can modify the appearance of the selection in the control through the **SelectionFill** and **SelectionStroke** properties of **RadSyntaxEditor**.

#### Customize the appearance of the selection

<snippet id='syntax-editor-syntaxeditorgettingstarted-selectioncolor-cs' />
<snippet id='syntax-editor-syntaxeditorgettingstarted-selectioncolor-vb' />



#### Figure 2: RadSyntaxEditor with custom selection color

![WinForms RadSyntaxEditor with custom selection color](images/selection002.png)

## Programmatic Selection

Through the control's **Selection** property, you can programmatically manipulate the selection and get additional details for the selected span(s). The following example demonstrates how you can get the entire selection as a string through the **GetSelectedText** method.

<snippet id='syntax-editor-syntaxeditorgettingstarted-programmaticselection-cs' />
<snippet id='syntax-editor-syntaxeditorgettingstarted-programmaticselection-vb' />



# See Also

* [How to Select the Clicked Word in RadSyntaxEditor]({%slug select-clicked-word-in-syntax-editor%})
