---
title: Formatting API
page_title: Formatting API
description: Formatting API
slug: richtexteditor-getting-started-formatting-api
tags: formatting,api
published: True
position: 1
---

# Formatting API



If you want to format the content of __RadRichTextEditor__ at run time, you have to use the API exposed by
        __RadRichTextEditor__. This is essential, as the main purpose of __RadRichTextEditor__ is to allow the users to format
        their input via UI. The UI should call the respective API methods of the control.
      

## Changing the text formatting

The __RadRichTextEditor__ exposes methods that change the style of the selected text or the paragraph. When a method is called, the
          respective style is applied to the selected text. If there is no selection available, the style is applied to the word in which the caret is located.
        

Here is an example of a toggle button that upon checking should make the selection or the current word bold. In the handler of the
          __Click__ event of the __RadToggleButton__, the __ToggleBold()__ method of
          __RadRichTextEditor__ is called.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=bold}}
	        
	        private void togglebutton_Click(object sender, EventArgs e)
	        {
	            this.radRichTextEditor.ToggleBold();
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=bold}}
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class



## Using the active editor

__RadRichTextEditor__ supports headers and footers. They are represented through separate instances of
          __RadRichTextEditor__. When a document has headers and footers you can use the __ActiveDocumentEditor__ property
          of __RadRichTextEditor__ to get the editor instance where the caret is currently situated.
        

>tipYou can find more about the Header and Footer functionality in
            [this article]({%slug richtexteditor-features-headers-and-footers%})
            .
          

The following example inserts the word "text" at the CaretPosition.

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=insert}}
	            
	            this.radRichTextEditor.Insert("text");
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=insert}}
	
	        Me.radRichTextEditor.Insert("text")
	
	        '#End Region
	
	        Dim togglebutton As New RadToggleButton()
	        AddHandler togglebutton.Click, AddressOf Me.togglebutton_Click
	
	        Dim fragment As New DocumentFragment(Me.radRichTextEditor.Document)
	
	        '#Region "fragment"
	
	        Me.radRichTextEditor.InsertFragment(fragment)
	
	        '#End Region
	
	        '#Region "insert1"
	
	        Dim fragmentFromDocument As New DocumentFragment(Me.radRichTextEditor.Document)
	
	        '#End Region
	
	        '#Region "selection"
	
	        Dim fragmentFromSelection As DocumentFragment = Me.radRichTextEditor.Document.Selection.CopySelectedDocumentElements()
	
	        '#End Region
	
	        '#Region "readonly"
	
	        Me.radRichTextEditor.IsReadOnly = True
	
	        '#End Region
	    End Sub
	
	    #Region "bold"
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class



## Creating a DocumentFragment

One of the common uses of the API is creating and inserting a __DocumentFragment__. Currently you can create a fragment in two ways:
        

* through __DocumentFragment__'s constructor;
            

* through selection.
            

Both approaches can be used to insert content at the caret position with the __InsertFragment__ method:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=fragment}}
	            
	            this.radRichTextEditor.InsertFragment(fragment);
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=fragment}}
	
	        Me.radRichTextEditor.InsertFragment(fragment)
	
	        '#End Region
	
	        '#Region "insert1"
	
	        Dim fragmentFromDocument As New DocumentFragment(Me.radRichTextEditor.Document)
	
	        '#End Region
	
	        '#Region "selection"
	
	        Dim fragmentFromSelection As DocumentFragment = Me.radRichTextEditor.Document.Selection.CopySelectedDocumentElements()
	
	        '#End Region
	
	        '#Region "readonly"
	
	        Me.radRichTextEditor.IsReadOnly = True
	
	        '#End Region
	    End Sub
	
	    #Region "bold"
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class

Using the constructor of DocumentFragment

If you create a fragment in this way, it will end with a new paragraph. This is convenient when you want to separate the inserted fragment and
              end it with a new line. Furthermore, in this way if the last paragraph is in a list, it will appear properly in the new document.
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=insert1}}
	
	            DocumentFragment fragmentFromDocument = new DocumentFragment(this.radRichTextEditor.Document);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=insert1}}
	
	        Dim fragmentFromDocument As New DocumentFragment(Me.radRichTextEditor.Document)
	
	        '#End Region
	
	        '#Region "selection"
	
	        Dim fragmentFromSelection As DocumentFragment = Me.radRichTextEditor.Document.Selection.CopySelectedDocumentElements()
	
	        '#End Region
	
	        '#Region "readonly"
	
	        Me.radRichTextEditor.IsReadOnly = True
	
	        '#End Region
	    End Sub
	
	    #Region "bold"
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class



This is also the suggested approach when merging several documents into one.Using the selection

If you choose to use the document selection when creating a __DocumentFragment__, there will be no additional paragraph after
              the fragment.
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=selection}}
	
	            DocumentFragment fragmentFromSelection = this.radRichTextEditor.Document.Selection.CopySelectedDocumentElements();
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=selection}}
	
	        Dim fragmentFromSelection As DocumentFragment = Me.radRichTextEditor.Document.Selection.CopySelectedDocumentElements()
	
	        '#End Region
	
	        '#Region "readonly"
	
	        Me.radRichTextEditor.IsReadOnly = True
	
	        '#End Region
	    End Sub
	
	    #Region "bold"
	
	    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Me.radRichTextEditor.ToggleBold()
	    End Sub
	
	    #End Region
	End Class



# See Also

 * [Import/Export]({%slug richtexteditor-import-export%})
