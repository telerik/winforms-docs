---
title: Break
page_title: Break - WinForms RadRichTextEditor Control 
description: Break element in the WinForms RadRichTextEditor control is an inline-level flow content element, which indicates that a break should be placed at the current position.
slug: winforms/richtextEditor/break
tags: properties,and,methods
published: True
position: 8
---

# Break

Break element is an inline-level flow content element, which indicates that a break should be placed at the current position. There are three types of breaks:

* __Line Break__: Breaks the current line and starts a new one.

* __Page Break__: Breaks the current page and starts a new one.

* __Column Break__: Breaks the current [section column]({%slug winforms/richtextEditor/section-columns%}) and starts a new one. If the current section is not divided into columns, or the column break occurs in the last column on the current page, then the restart location for text will be the next page of the document.

## Inserting a Break

The Break elements can be used only in the context of a **Paragraph** element. The [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%}) exposes a collection of __Inlines__, to which the breaks can be added. __Example 1__ shows how to achieve this.

#### Example 1: Insert a break

<snippet id='richtexteditor-breakcode-addbreak-cs' />
<snippet id='richtexteditor-breakcode-addbreak-vb' />



## Modifying a Break

The __Break__ element exposes a __BreakType__ property, which specifies the type of the break. __Example 2__ demonstrates how to change it.

#### Example 2: Modify a break

<snippet id='richtexteditor-breakcode-modifybreak-cs' />
<snippet id='richtexteditor-breakcode-modifybreak-vb' />



# See Also

 * [Elements Hierarchy]({%slug winforms/richtexteditor-/document-elements%})
 * [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%})
 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})
