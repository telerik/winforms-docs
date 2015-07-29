---
title: Events
page_title: Events | UI for WinForms Documentation
description: Events
slug: winforms/richtextbox-(obsolete)/events
tags: events
published: True
position: 3
---

# Events



## 

This topic covers the specific events exposed by the __RadRichTextBox__ control.

The __RadRichTextBox__ control raises the following specific events:

* __CurrentEditingStyleChanged__ - occurs when the current editing style changes. The event handler receives two arguments: 
				

	* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

	* An __EventArgs__ object

* __CurrentParagraphStyleChanged__ - occurs when the position of the caret goes to another paragraph. The event handler receives two arguments: 
				

	* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

	* An __EventArgs__ object.

* __CurrentSpanStyleChanged__ - occurs when the position of the caret goes to another word. The event handler receives two arguments: 
				

* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

* An __EventArgs__ object.

* __CurrentVisiblePageChanged__ - occurs when the current page has changed. The event handler receives two arguments:
				

* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

* An __EventArgs__ object.

* __DocumentArranged__ - occurs when the current document has been arranged. The event handler receives two arguments: 
				

* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

* An __EventArgs__ object.

* __DocumentContentChanged__ - occurs when the content of the current document has changed. The event handler receives two arguments: 
				

* The sender argument contains the __RadDocument__. This argument is of type object, but can be cast to the __RadDocument__ type.

* An __EventArgs__ object.

* __HyperlinkClicked__ - occurs when the current page has changed. The event handler receives two arguments: 
				

* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

* A __HyperlinkClickedEventArgs__ object. This argument allows you to access the URL and the target of the hyperlink.

* __SelectedLayoutBoxChanged__ - occurs when the current layout box gets changed. The event handler receives two arguments: 
				

* The sender argument contains the __RadRichTextBox__. This argument is of type object, but can be cast to the __RadRichTextBox__ type.

* A __SelectedLayoutBoxChangedEventArgs__ object.
