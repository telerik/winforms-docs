---
title: InlineImage
page_title: InlineImage
description: InlineImage
slug: richtextbox-features-document-elements-inlineimage
tags: inlineimage
published: True
position: 6
---

# InlineImage



The __InlineImage__ class allows images to be displayed inside the document. The __InlineImage__ 
      	can only be used in the context of a __Paragraph__ class. As it is an inline element, it gets placed after the previous
      	inline element untill the end of the line. If there is no space left, the element will be wrapped on the next line.
      

This topic will explain you how to use the __InlineImage__ element.

## 

Here is an example of how to add an __InlineImage__ element in the code behind.

#### __C#__

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxInnerImage.cs region=AddInlineImageViaCode}}
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            Size size = new Size(236, 50);
	            ImageInline image = new ImageInline(Resources.Desert, size);
	            paragraph.Inlines.Add(image);
	            section.Children.Add(paragraph);
	            this.radRichTextBox1.Document.Sections.Add(section);
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxInnerImage.vb region=AddInlineImageViaCode}}
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        Dim stream As IO.Stream = GetImage()
	        Dim size As New Drawing.Size(236, 50)
	        Dim image As New ImageInline(stream, size, "png")
	        paragraph.Inlines.Add(image)
	        section.Children.Add(paragraph)
	        Me.RadRichTextBox1.Document.Sections.Add(section)
	{{endregion}}



## Add via UI

Here is an example of how to allow the user to select an image and add it to the document. 
        	For that purpose a __RadButton__ and an __OpenFileDialog__ are used.
        	When the file path from the __OpenFileDialog__ is obtained, create a new Bitmap with the file 
        	path to the image, and pass the image to the
        	__InsertImage()__ method of the __RadRichTextBox__.
        	After calling the __InsertImage()__ method,
        	the image will appear in the document with its default width and height.
        

#### __C#__

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxInnerImage.cs region=AddInlineImageViaUI}}
	        private void imageButton_Click(object sender, EventArgs e)
	        {
	            OpenFileDialog openDialog = new OpenFileDialog();
	            openDialog.Filter = "Images|*.png";
	            openDialog.Multiselect = false;
	            if (openDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
	            {
	                Bitmap img = new Bitmap(openDialog.FileName);
	                this.radRichTextBox1.InsertImage(img);
	            }
	        }
	{{endregion}}



#### __VB.NET__

{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxInnerImage.vb region=AddInlineImageViaUI}}
	    Private Sub imageButton_Click(sender As System.Object, e As System.EventArgs) Handles imageButton.Click
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Images|*.png"
	        openDialog.Multiselect = False
	            If openDialog.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
	                Dim img As New Bitmap(openDialog.FileName)
	            Me.RadRichTextBox1.InsertImage(img)
	        End If
	    End Sub
	{{endregion}}


