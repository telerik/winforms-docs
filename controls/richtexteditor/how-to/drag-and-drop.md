---
title: Drag and Drop
page_title: Drag and Drop - RadRichTextEditor
description: RadRichTextEditor also supports drag and drop operations. The example in this article will handle a scenario of dropping content inside the editor.
slug: winforms/richtexteditor/how-to/drag-and-drop
tags: drag,drop
published: True
position: 3
---

# Drag and Drop

Like other standard WinForms controls **RadRichTextEditor** also supports drag and drop operations. The example in this article will handle a scenario of dropping content inside the editor. Similarly to Word the caret will follow the mouse so that the dragged item can be inserted at its precise location. In the example we will insert text from a predefined list of cities. The same approach can also be followed with other elements as well.

>caption Figure 1: Drag and Drop Between RadListView and RadRichTextEditor 

![WinForms RadRichTextEditor Drag and Drop Between RadListView and RadRichTextEditor](images/richtexteditor-how-to-drag-and-drop001.gif)

>note In RadRichTextEditor drop operation can be allowed by accessing the **RadRichTextBox** object and setting its **AllowDrop** property to *true*.

#### Initial Controls Setup

<snippet id='richtexteditor-radrichtexteditordraganddropform-setupcontrols-cs' />
<snippet id='richtexteditor-radrichtexteditordraganddropform-setupcontrols-vb' />



## Handling Events

In the **PreviewDragOver** event one needs to first focus the control so that the Caret can be accessed and moved. The tricky part is get the actual position inside the editor with respect to the view port and the current scaling from the mouse coordinates.

#### PreviewDragOver Event

<snippet id='richtexteditor-radrichtexteditordraganddropform-dragoverevent-cs' />
<snippet id='richtexteditor-radrichtexteditordraganddropform-dragoverevent-vb' />



The **PreviewDragDrop** event will be handled so that a text is inserted inside the document.

#### PreviewDragDrop Event

<snippet id='richtexteditor-radrichtexteditordraganddropform-dragdropevent-cs' />
<snippet id='richtexteditor-radrichtexteditordraganddropform-dragdropevent-vb' />



# See Also

* [RadListView]({%slug winforms/listview%})
