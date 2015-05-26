---
title: RadDocumentEditor
page_title: RadDocumentEditor | UI for WinForms Documentation
description: RadDocumentEditor
slug: winforms/richtexteditor-/features/raddocumenteditor
tags: raddocumenteditor
published: True
position: 4
---

# RadDocumentEditor



__RadDocument__ has API of its own, but using it has a set of limitations. First of all, adding and removing Blocks and
        Inlines from the document can be done only before the document has been measured – a procedure that calculates the desired size of the spans,
        paragraphs and the document altogether in order to calculate its layout. These operations are usually invoked by the framework when the
        document in shown in a __RadRichTextEditor__. However, some of the methods of __RadDocument__ and
        __RadRichTextEditor__ require that the document be measured before their execution, so if such a method is invoked, the
        document will be measured. Then, adding Paragraphs, Tables, Sections and Spans will break the structure of the document.
      

Another issue that the use of the methods of __RadDocument__ causes is due to the fact that they are not registered in
        the undo/redo stack. Thus, once such a method is used, the history stack is cleared and users will no longer be able to undo and redo their
        previous changes.
      

## What is RadDocumentEditor

On the other hand, __RadRichTextEditor__ provides a much richer API for editing the __RadDocument__
          instance in it. All respective methods from that API are located in the __IDocumentEditor__ interface which defines
          all method that edit fields, annotation ranges, document elements, history, headers and footers and so on and is inherited from
          __RadRichTextEditor__. In that regard, if you are modifying the document in a class that knows of the existence of
          __RadRichTextEditor__, you can use the methods of __RadRichTextEditor__ in order to manipulate the
          document in a way transparent to the end user.
        

The appropriate API, however, should be available in cases when you want to modify a document from code without having a
          __RadRichTextEditor__. For this purpose, a __RadDocumentEditor__ class has been introduced. It also
          implements the __IDocumentEditor__ interface and includes all relevant methods of __RadRichTextEditor__
          for manipulating the document programmatically.
        

## How to use RadDocumentEditor

When a __RadDocument__ instance was for some reason created from code – built using the elements hierarchy or imported,
          it can be passed to a __RadDocumentEditor__ like this:
        #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\Features\DocumentEditorCode.cs region=init}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentEditorCode.vb region=init}} 

````C#
            
            RadDocumentEditor documentEditor = new RadDocumentEditor(this.radRichTextEditor1.Document);
````
````VB.NET

        Dim documentEditor As New RadDocumentEditor(Me.radRichTextEditor1.Document)

        '
````

{{endregion}} 




The newly created *documentEditor* instance now provides all capabilities that a
          __RadRichTextEditor__ provides. Moreover, you can group several methods so that they are added to the Undo/Redo stack
          as a single item. This can be achieved like this:
        #_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\Features\DocumentEditorCode.cs region=insert}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentEditorCode.vb region=insert}} 

````C#
                
            documentEditor.BeginUndoGroup();
                
            if (documentEditor.Document.CaretPosition.IsPositionInsideTable)
            {
                documentEditor.InsertTableRow();
                documentEditor.InsertTableRow();
                documentEditor.InsertTableRow();
                documentEditor.Document.Selection.Clear();
            }

            documentEditor.EndUndoGroup("Insert three table rows");
````
````VB.NET

        documentEditor.BeginUndoGroup()

        If documentEditor.Document.CaretPosition.IsPositionInsideTable Then
            documentEditor.InsertTableRow()
            documentEditor.InsertTableRow()
            documentEditor.InsertTableRow()
            documentEditor.Document.Selection.Clear()
        End If

        documentEditor.EndUndoGroup("Insert three table rows")

        '
````

{{endregion}} 




You can also cancel the execution of the undo group, and it won't be recorded in the history:#_[C#] _

	



{{source=..\SamplesCS\RichTextEditor\Features\DocumentEditorCode.cs region=cancel}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentEditorCode.vb region=cancel}} 

````C#
                
            documentEditor.BeginUndoGroup();

            if (documentEditor.Document.CaretPosition.IsPositionInsideTable)
            {
                documentEditor.InsertTableRow();
                documentEditor.InsertTableRow();
                documentEditor.InsertTableRow();
                documentEditor.Document.Selection.Clear();
            }

            documentEditor.CancelUndoGroup();
````
````VB.NET

        documentEditor.BeginUndoGroup()

        If documentEditor.Document.CaretPosition.IsPositionInsideTable Then
            documentEditor.InsertTableRow()
            documentEditor.InsertTableRow()
            documentEditor.InsertTableRow()
            documentEditor.Document.Selection.Clear()
        End If

        documentEditor.CancelUndoGroup()

        '
````

{{endregion}} 




One thing to note here is that it is not possible to remove some actions from the undo history altogether, i.e. you cannot perform an
          action without it getting registered in the Undo/Redo stack. In most cases, however, this is sufficient, as you can group the operations
          that you do not want to name and show explicitly to the end user with the ones that have been user-initiated and are expected by the person
          modifying the content of __RadRichTextEditor__.
        

# See Also

 * [History]({%slug winforms/richtexteditor-/features/history%})

 * [Using RadRichTextEditor's formatting API ]({%slug winforms/richtexteditor-/getting-started/formatting-api%})
