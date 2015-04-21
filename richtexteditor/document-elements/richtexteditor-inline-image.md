---
title: Inline Image
page_title: Inline Image
description: Inline Image
slug: richtexteditor-document-elements-inline-image
tags: inline,image
published: True
position: 4
---

# Inline Image



The __InlineImage__ class allows images to be displayed inside the document. The __InlineImage__ can only be used 
        in the context of a __Paragraph__ class. As it is an inline element, it gets placed after the previous inline element until the end of 
        the line. If there is no space left, the element will be wrapped on the next line.
      

This topic will explain you how to use the __InlineImage__ element.
      

## Add in Code Behind

Here is an example of how to add an __InlineImage__ element in the code behind.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\InlineImageCode.cs region=image}}
	            
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            ImageInline image;
	            Telerik.WinControls.RichTextEditor.UI.Size size = new Telerik.WinControls.RichTextEditor.UI.Size(236, 50);
	            using (MemoryStream ms = new MemoryStream())
	            {
	                Image.FromFile(@"C:\logo.png").Save(ms, System.Drawing.Imaging.ImageFormat.Png);
	                image = new ImageInline(ms, size, "png");
	            }
	            
	            paragraph.Inlines.Add(image);
	            section.Children.Add(paragraph);
	            this.radRichTextEditor1.Document.Sections.Add(section);
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\InlineImageCode.vb region=image}}
	
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        Dim image As ImageInline     
	        Dim my_size As New Telerik.WinControls.RichTextEditor.UI.Size(236, 50)
	        Using ms As New MemoryStream()
	            System.Drawing.Image.FromFile("C:\logo.png").Save(ms, System.Drawing.Imaging.ImageFormat.Png)
	            image = New ImageInline(ms, my_size, "png")
	        End Using
	
	        paragraph.Inlines.Add(image)
	        section.Children.Add(paragraph)
	        Me.radRichTextEditor1.Document.Sections.Add(section)
	
	{{endregion}}



## Add via UI

Here is an example of how to allow the user to select an image and add it to the document. For that purpose a __RadButton__ 
          and an __OpenFileDialog__ are used. When the file stream from the __OpenFileDialog__ gets obtained, it's 
          passed to the __InsertImage()__ API method of the __RadRichTextEditor__. This method takes as an argument the 
          extension of the image, which can be again obtained from the __FileInfo__ object. After calling the __InsertImage()__ 
          method, the image will appear in the document with its default width and height.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\InlineImageCode.cs region=insert}}
	        
	        private void ImageButton_Click(object sender, RoutedEventArgs e)
	        {
	            OpenFileDialog openDialog = new OpenFileDialog();
	            openDialog.Filter = "Images|*.jpg;*.png";
	            openDialog.Multiselect = false;
	            DialogResult dialogResult = openDialog.ShowDialog();
	            if (dialogResult == DialogResult.Yes)
	            {
	                Stream stream = openDialog.OpenFile();
	                
	                string extension = Path.GetExtension(openDialog.FileName);
	                this.radRichTextEditor1.InsertImage(stream, extension);
	            }
	        }
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\InlineImageCode.vb region=insert}}
	
	    Private Sub ImageButton_Click(ByVal sender As Object, ByVal e As RoutedEventArgs)
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Images|*.jpg;*.png"
	        openDialog.Multiselect = False
	
	        Dim myDialogResult As DialogResult = openDialog.ShowDialog()
	        If myDialogResult = System.Windows.Forms.DialogResult.Yes Then
	            Dim stream As Stream = openDialog.OpenFile()
	
	            Dim extension As String = Path.GetExtension(openDialog.FileName)
	            Me.radRichTextEditor1.InsertImage(stream, extension)
	        End If
	    End Sub
	
	{{endregion}}



# See Also

 * [Document Elements]({%slug richtexteditor-document-elements%})

 * [Section]({%slug richtexteditor-document-elements-section%})

 * [Paragraph]({%slug richtexteditor-document-elements-paragraph%})

 * [Span]({%slug richtexteditor-document-elements-span%})

 * [Editing Images]({%slug richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-editing-images%})

 * [Hyperlink]({%slug richtexteditor-features-hyperlink%})
