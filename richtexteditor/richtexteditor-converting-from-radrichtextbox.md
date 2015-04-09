---
title: Upgrading to RadRichTextEditor
page_title: Upgrading to RadRichTextEditor
description: Upgrading to RadRichTextEditor
slug: richtexteditor-converting-from-radrichtextbox
tags: upgrading,to,radrichtexteditor
published: True
position: 0
---

# Upgrading to RadRichTextEditor



This article explains you can convert your applications that use the RadRichTextBox to use the new and improved __RadRichTextEditor__.
      

## Converting to RadRichTextEditor

In order to convert the RadRichTextBox to __RadRichTextEditor__ you should take the following steps:     
        

1. Remove the references to *Telerik.WinControls.RichTextBox.dll* and then add the one for the new control: 
            *Telerik.WinControls.RichTextEditor.dll*

1. Replace the __RadRichTextBox__ type with __RadRichTextEditor__ (you can change the name as well)
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Upgrade.cs region=upgrade}}
	        //old
	        private RadRichTextBox radRichTextBox1 = new RadRichTextBox();
	        //new
	        private RadRichTextEditor radRichTextEditor1 = new RadRichTextEditor();      
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Upgrade.vb region=upgrade}}
	    'old
	    Private radRichTextBox1 As New RadRichTextBox()
	    'new
	    Private radRichTextEditor1 As New RadRichTextEditor()
	#End Region
	    Public Sub New()
	
	        InitializeComponent()
	    End Sub
	End Class



1. __RadRichTextEditor__ supports all features that are supported in the RadRichTextBox (and much more), however some of them 
              may not be at the same place and some compile time errors may occur. The final step is to fix these errors, it can be achieved by 
              finding the new equivalents of the missing properties and method and replacing them. Should you have any issues finding a property
            or a method, feel free to submit a support ticket and we will help you find it.

>important__RadRichTextEditor__ example provides you with a ribbon UI that can be easily used if you need 
            a fully functional text editor.  Detailed information is available [here]({%slug richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui%}).
        

## Common conversion issues

* __ChangeFontFamily__ method now takes *Telerik.WinControls.RichTextEditor.UI.FontFamily* as argument.

* The __ChangeSectionMargin__ method is renamed to __ChangeSectionPageMargin__.
            

* The __ChangePageSize__ method is renamed to __ChangeSectionPageSize__.
            

* The __ShowInsertHyperlinkDialog__ method is moved to the control and now it can be used like this:
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertHyperlink}}
	            
	            radRichTextEditor1.ShowInsertHyperlinkDialog();
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertHyperlink}}
	
	        radRichTextEditor1.ShowInsertHyperlinkDialog()
	
	        '#End Region
	
	        '#Region "insertBookmark"
	
	        radRichTextEditor1.ShowInsertHyperlinkDialog()
	
	        '#End Region
	
	        Dim stream As Stream = New FileStream("", FileMode.Create)
	        Dim extension As String = "jpg"
	
	        '#Region "insertImage"
	
	        radRichTextEditor1.InsertImage(stream, extension)
	
	        '#End Region
	
	        '#Region "insertTable"
	        radRichTextEditor1.ShowInsertTableDialog()
	
	        '#End Region
	
	    End Sub
	End Class
	
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik
	'Facebook: facebook.com/telerik
	'=======================================================
	



* The __ShowManageBookmarksDialog__ now can be used as follows:           
           

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertBookmark}}
	            
	            radRichTextEditor1.ShowInsertHyperlinkDialog();
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertBookmark}}
	
	        radRichTextEditor1.ShowInsertHyperlinkDialog()
	
	        '#End Region
	
	        Dim stream As Stream = New FileStream("", FileMode.Create)
	        Dim extension As String = "jpg"
	
	        '#Region "insertImage"
	
	        radRichTextEditor1.InsertImage(stream, extension)
	
	        '#End Region
	
	        '#Region "insertTable"
	        radRichTextEditor1.ShowInsertTableDialog()
	
	        '#End Region
	
	    End Sub
	End Class
	
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik
	'Facebook: facebook.com/telerik
	'=======================================================
	



* When you are inserting an image it is mandatory to specify the extension:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertImage}}
	            
	            radRichTextEditor1.InsertImage(stream, extension);
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertImage}}
	
	        radRichTextEditor1.InsertImage(stream, extension)
	
	        '#End Region
	
	        '#Region "insertTable"
	        radRichTextEditor1.ShowInsertTableDialog()
	
	        '#End Region
	
	    End Sub
	End Class
	
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik
	'Facebook: facebook.com/telerik
	'=======================================================
	



* Now you can insert table by using the built-in dialog rather than using InsertTableForm:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\ConvertToRadRichTextEditor.cs region=insertTable}}
	            
	            radRichTextEditor1.ShowInsertTableDialog();
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\ConvertToRadRichTextEditor.vb region=insertTable}}
	        radRichTextEditor1.ShowInsertTableDialog()
	
	        '#End Region
	
	    End Sub
	End Class
	
	
	'=======================================================
	'Service provided by Telerik (www.telerik.com)
	'Conversion powered by NRefactory.
	'Twitter: @telerik
	'Facebook: facebook.com/telerik
	'=======================================================
	



# See Also

 * [Getting Started]({%slug richtexteditor-getting-started%})

 * [Frequently Asked Questions]({%slug richtexteditor-frequently-asked-questions%})
