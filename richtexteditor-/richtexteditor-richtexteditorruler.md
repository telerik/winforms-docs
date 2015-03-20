---
title: RadRichTextEditorRuler 
page_title: RadRichTextEditorRuler 
description: RadRichTextEditorRuler 
slug: richtexteditor-richtexteditorruler
tags: radrichtexteditorruler,
published: True
position: 8
---

# RadRichTextEditorRuler 



__RadRichTextEditorRuler__ is a control providing ruler functionality to 
        [RadRichTextEditor]({%slug richtexteditor%}). 
        The rulers allow you to change the paragraph, page margins or align the paragraphs in the document.![richtexteditor-richtexteditorruler 001](images/richtexteditor-richtexteditorruler001.png)

>Rulers only apply to the [Paged]({%slug richtexteditor-document-elements-raddocument%}) document layout mode of the 
        __RadRichtextEditor.__

## Using the RadRichTextEditorRuler at design time

Since __RadRichTextEditorRuler__ is a separate control it is available in the toolbox. Here is how to put it in 
        action:

1. Drag and drop __RadRichTextEditorRuler__ on the form.

1. Drag and drop __RadRichTextEditor__ inside the __RadRichTextEditorRuler.__.

1. Set the __AssociatedRichTextBox__ property in the properties window.![richtexteditor-richtexteditorruler 002](images/richtexteditor-richtexteditorruler002.png)

1. Set the LayoutMode of the __RadRichTextEditor__ to 
            [Paged]({%slug richtexteditor-document-elements-raddocument%}).

## Using the RadRichTextEditorRuler programmatically.

You can add the control in code as well. The following snippet demonstrates how to add
        __RadRichTextEditorRuler__ and __RadRichTextEditor__ to a form:

#### __[C#] __

{{region ruler}}
	        void RadRichTextEditorRuler_Load(object sender, EventArgs e)
	        {
	            RadRichTextEditor radRichTextEditor1 = new RadRichTextEditor();
	            radRichTextEditor1.LayoutMode = DocumentLayoutMode.Paged;
	
	            RadRichTextEditorRuler documentRuler1 = new Telerik.WinControls.UI.RadRichTextEditorRuler();
	            documentRuler1.AssociatedRichTextBox = radRichTextEditor1;
	            documentRuler1.Dock = System.Windows.Forms.DockStyle.Fill;
	            documentRuler1.Controls.Add(radRichTextEditor1);
	            this.Controls.Add(documentRuler1);
	        }
	{{endregion}}



#### __[VB.NET] __

{{region ruler}}
	    Private Sub RadRichTextEditorRuler_Load(ByVal sender As Object, ByVal e As EventArgs)
	        Dim radRichTextEditor1 As New RadRichTextEditor()
	        radRichTextEditor1.LayoutMode = DocumentLayoutMode.Paged
	
	        Dim documentRuler1 As RadRichTextEditorRuler = New Telerik.WinControls.UI.RadRichTextEditorRuler()
	        documentRuler1.AssociatedRichTextBox = radRichTextEditor1
	        documentRuler1.Dock = System.Windows.Forms.DockStyle.Fill
	        documentRuler1.Controls.Add(radRichTextEditor1)
	        Me.Controls.Add(documentRuler1)
	    End Sub
	#End Region
	End Class


