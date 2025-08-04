---
title: Events
page_title: Events - WinForms RichTextEditor Control
description: Learn what are the public events that WinForms RichTextEditor offers. 
slug: winforms/richtexteditor/events
tags: events
published: True
position: 13
previous_url: richtexteditor-events
---

# Events
 
This topic covers the specific events exposed by the __RadRichTextEditor__ control.
        
The __RadRichTextEditor__ control raises the following specific events:
        
* __CommandError__ - occurs when an error gets thrown while executing a command. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* A __CommandErrorEventArgs__ object.
                
* __CommandExecuted__ - occurs after a command gets executed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* A __CommandExecutedEventArgs__ object. This arguments allows you to access the command to be executed and its command parameter.                

* __CommandExecuting__ - occurs before a command gets executed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.                

	* A __CommandExecutingEventArgs__ object. This arguments allows you to access the command to be executed and its command parameter and to cancel the command execution.
                
* __CurrentEditingStyleChanged__ - occurs when the current editing style changes. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object
                
* __CurrentParagraphStyleChanged__ - occurs when the position of the caret goes to another paragraph. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __CurrentSpanStyleChanged__ - occurs when the position of the caret goes to another word. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __CurrentVisiblePageChanged__ - occurs when the current page has changed. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __DocumentArranged__ - occurs when the current document has been arranged. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __DocumentChanged__ - occurs when the current document has been changed. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.                

* __DocumentChanging__ - occurs before the current document gets changed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __DocumentContentChanged__ - occurs when the content of the current document has changed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __DocumentLayoutModeChanged__ - occurs when the layout mode of the current document has changed. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.                

* __HyperlinkClicked__ - occurs when the users clicks on a hyperlink in the current document. The event allows you to either cancel or replace the navigation logic. HyperlinkClicked event can be used as a confirmation from the end-user whether to proceed or not with opening a hyperlink due to security reasons. The event handler receives two arguments:
       
	* The sender argument contains the __Span__ containing the hyperlink's content. This argument is of type object, but can be cast to the __Span__ type.
                
	* A __HyperlinkClickedEventArgs__ object. This argument allows you to access the following properties:
		- __Handled__: Get or set a value indicating whether the event is handled.
		- __HyperlinkTarget__: Gets the target hyperlink. 
		- __URL__: Gets the URL of the hyperlink.
		- __IsTrustedUrl__: Gets a value tha indicates if the URL passes the validation. If the URL is not trusted, the hyperlink will not be opened. Set this property to true to open the hyperlink. For more information see [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%}) article.
                
* __IsReadOnlyChanged__ - occurs when __IsReadOnly__ value has changed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __ScaleFactorChanged__ - occurs when the __ScaleFactor__ value has changed. The event handler receives two arguments:            

	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* An __EventArgs__ object.
                
* __SelectedLayoutBoxChanged__ - occurs when the current layout box gets changed. The event handler receives two arguments:
            
	* The sender argument contains the __RadRichTextEditor__. This argument is of type object, but can be cast to the __RadRichTextEditor__ type.
                
	* A __SelectedLayoutBoxChangedEventArgs__ object.

* __BeforeOpenFile__ - occurs before a file is opened, before the open file dialog is shown. Subscribe to this event to customize the OpenFileDialog properties (like FileName, Title, Filter, InitialDirectory, etc.) before it is displayed to the user. Allows to be canceled.

* __BeforeSaveFile__ -  occurs before the file is saved, before the save file dialog is shown. Subscribe to this event to customize the SaveFileDialog properties (like FileName, Title, Filter, InitialDirectory, etc.) before it is displayed to the user. Allows to be canceled.


# See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
