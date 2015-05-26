---
title: Formatting API
page_title: Formatting API | UI for WinForms Documentation
description: Formatting API
slug: winforms/richtexteditor-/getting-started/formatting-api
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
        #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=bold}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=bold}} 

````C#
        
        private void togglebutton_Click(object sender, EventArgs e)
        {
            this.radRichTextEditor.ToggleBold();
        }
````
````VB.NET

    Private Sub togglebutton_Click(ByVal sender As Object, ByVal e As EventArgs)
        Me.radRichTextEditor.ToggleBold()
    End Sub
````

{{endregion}} 




## Using the active editor

__RadRichTextEditor__ supports headers and footers. They are represented through separate instances of
          __RadRichTextEditor__. When a document has headers and footers you can use the __ActiveDocumentEditor__ property
          of __RadRichTextEditor__ to get the editor instance where the caret is currently situated.
        

>tip You can find more about the Header and Footer functionality in[this article]({%slug winforms/richtexteditor-/features/headers-and-footers%}).
>


The following example inserts the word "text" at the CaretPosition.#_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=insert}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=insert}} 

````C#
            
            this.radRichTextEditor.Insert("text");
````
````VB.NET

        Me.radRichTextEditor.Insert("text")

        '
````

{{endregion}} 




## Creating a DocumentFragment

One of the common uses of the API is creating and inserting a __DocumentFragment__. Currently you can create a fragment in two ways:
        

* through __DocumentFragment__'s constructor;
            

* through selection.
            

Both approaches can be used to insert content at the caret position with the __InsertFragment__ method:
        #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=fragment}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=fragment}} 

````C#
            
            this.radRichTextEditor.InsertFragment(fragment);
````
````VB.NET

        Me.radRichTextEditor.InsertFragment(fragment)

        '
````

{{endregion}} 


Using the constructor of DocumentFragment

If you create a fragment in this way, it will end with a new paragraph. This is convenient when you want to separate the inserted fragment and
              end it with a new line. Furthermore, in this way if the last paragraph is in a list, it will appear properly in the new document.
            #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=insert1}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=insert1}} 

````C#

            DocumentFragment fragmentFromDocument = new DocumentFragment(this.radRichTextEditor.Document);
````
````VB.NET

        Dim fragmentFromDocument As New DocumentFragment(Me.radRichTextEditor.Document)

        '
````

{{endregion}} 




This is also the suggested approach when merging several documents into one.Using the selection

If you choose to use the document selection when creating a __DocumentFragment__, there will be no additional paragraph after
              the fragment.
            #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\GettingStarted\FormatingAPI.cs region=selection}} 
{{source=..\SamplesVB\RichTextEditor\GettingStarted\FormatingAPI.vb region=selection}} 

````C#

            DocumentFragment fragmentFromSelection = this.radRichTextEditor.Document.Selection.CopySelectedDocumentElements();
````
````VB.NET

        Dim fragmentFromSelection As DocumentFragment = Me.radRichTextEditor.Document.Selection.CopySelectedDocumentElements()

        '
````

{{endregion}} 




# See Also

 * [Import/Export]({%slug winforms/richtexteditor-/import/export%})
