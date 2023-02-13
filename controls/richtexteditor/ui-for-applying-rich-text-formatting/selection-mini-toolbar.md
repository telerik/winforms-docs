---
title: Selection Mini Toolbar
page_title: Selection Mini Toolbar - WinForms RichTextEditor Control
description: SelectionMiniToolBar is a floating toolbar that appears next to the current position after making a selection with the mouse in the document.
slug: winforms/richtexteditor-/ui-for-applying-rich-text-formatting/selection-mini-toolbar
tags: selection,mini,toolbar
published: True
position: 3
previous_url: richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-selection-mini-toolbar
---

# Selection Mini Toolbar

__SelectionMiniToolBar__ is a floating toolbar that appears next to the current position after making a selection with the mouse in the document. It contains some useful commands for formatting text. You can access it via the RadRichTextEditor.RichTextBoxElement.**SelectionMiniToolBar** property.

![WinForms RadRichTextEditor SelectionMiniToolBar Overview](images/richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-context-menu001.png)

The dialog can be completely replaced with a custom one. This can be done as easy as with the other   __RadRichTextEditor__ dialogs by implementing the interface __ISelectionMiniToolBar__ and assigning an instance of the new class to the __SelectionMiniToolBar__ property of the element.
        
And of course, for those of you who don't need additional UI pop-ups, these can be disabled by setting the __IsSelectionMiniToolBarEnabled__ property of __RadRichTextEditor__ to *false*.
        
