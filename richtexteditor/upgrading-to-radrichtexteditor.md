---
title: Upgrading to RadRichTextEditor
page_title: Upgrading to RadRichTextEditor | UI for WinForms Documentation
description: Upgrading to RadRichTextEditor
slug: winforms/richtexteditor-/upgrading-to-radrichtexteditor
tags: upgrading,to,radrichtexteditor
published: True
position: 1
previous_url: richtexteditor-converting-from-radrichtextbox
---

# Upgrading to RadRichTextEditor



This article explains you can convert your applications that use the RadRichTextBox to use the new and improved __RadRichTextEditor__.
      

## Converting to RadRichTextEditor

In order to convert the RadRichTextBox to __RadRichTextEditor__ you should take the following steps:     
        

1\. Remove the references to *Telerik.WinControls.RichTextBox.dll* and then add the one for the new control: 
            *Telerik.WinControls.RichTextEditor.dll*

2\. Replace the __RadRichTextBox__ type with __RadRichTextEditor__ (you can change the name as well)

{{source=..\SamplesCS\RichTextEditor\Upgrade.cs region=upgrade}} 
{{source=..\SamplesVB\RichTextEditor\Upgrade.vb region=upgrade}} 

````C#
//old
private RadRichTextBox radRichTextBox1 = new RadRichTextBox();
//new
private RadRichTextEditor radRichTextEditor1 = new RadRichTextEditor();

````
````VB.NET
'old
Private radRichTextBox1 As New RadRichTextBox()
'new
Private radRichTextEditor1 As New RadRichTextEditor()

````

{{endregion}} 


3\. __RadRichTextEditor__ supports all features that are supported in the RadRichTextBox (and much more), however some of them  may not be at the same place and some compile time errors may occur. The final step is to fix these errors, it can be achieved by  finding the new equivalents of the missing properties and method and replacing them. Should you have any issues finding a property or a method, feel free to submit a support ticket and we will help you find it.

>important  __RadRichTextEditor__ example provides you with a ribbon UI that can be easily used if you need a fully functional text editor.  Detailed information is available [here]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/ribbon-ui%}).
>


## Common conversion issues

* __ChangeFontFamily__ method now takes *Telerik.WinControls.RichTextEditor.UI.FontFamily* as argument.

* The __ChangeSectionMargin__ method is renamed to __ChangeSectionPageMargin__.
            

* The __ChangePageSize__ method is renamed to __ChangeSectionPageSize__.
            

* The __ShowInsertHyperlinkDialog__ method is moved to the control and now it can be used like this:

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertHyperlink}} 
{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertHyperlink}} 

````C#
            
radRichTextEditor1.ShowInsertHyperlinkDialog();

````
````VB.NET
radRichTextEditor1.ShowInsertHyperlinkDialog()

````

{{endregion}} 


* The __ShowManageBookmarksDialog__ now can be used as follows:           

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertBookmark}} 
{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertBookmark}} 

````C#
            
radRichTextEditor1.ShowInsertHyperlinkDialog();

````
````VB.NET
radRichTextEditor1.ShowInsertHyperlinkDialog()

````

{{endregion}} 


* When you are inserting an image it is mandatory to specify the extension:

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertImage}} 
{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertImage}} 

````C#
            
radRichTextEditor1.InsertImage(stream, extension);

````
````VB.NET
radRichTextEditor1.InsertImage(stream, extension)

````

{{endregion}} 


* Now you can insert table by using the built-in dialog rather than using InsertTableForm:

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertTable}} 
{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertTable}} 

````C#
            
radRichTextEditor1.ShowInsertTableDialog();

````
````VB.NET
radRichTextEditor1.ShowInsertTableDialog()

````

{{endregion}} 


# See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})

 * [Frequently Asked Questions]({%slug winforms/richtexteditor-/frequently-asked-questions%})
