---
title: Import/Export
page_title: Import/Export
description: Import/Export
slug: richtexteditor-import-export
tags: import/export
published: True
position: 5
---

# Import/Export



__RadRichTextEditor__ allows you to export and import its content. This is useful in case you want to save the user's input into a
        data base and then load it from there, or if you want to save/load the content of __RadRichTextEditor__ to/from a file. To import and export
        you have to use a specific class that implements the __IDocumentFormatProvider__. You can find built-in classes, that implement this
        interface, for each of the supported formats. Currently __RadRichTextEditor__ can export and import the following formats:
      

* __XAML__ - to import/export __XAML__ documents you have to use the __XamlFormatProvider__ class.
          

* __DOCX__ - to import/export __DOCX__documents you have to use the __DocxFormatProvider__ class.
          

* __HTML__ - to import/export __HTML__ documents you have to use the __HtmlFormatProvider__ class.
          

* __RTF__- to import/export __RTF__documents you have to use the __RtfFormatProvider__ class.
          

* __Plain text__- to import/export plain text documents you have to use the __TxtFormatProvider__ class.
          

* __PDF__ - to export documents to __PDF__ you have to use the __PdfFormatProvider__ class.
          

## Specifics

__RadRichTextEditor__'s format providers can import/export a wide variety of features supported by the control. However, features
          which are not yet supported are stripped on import. Such examples are content controls like text boxes, check boxes, etc. which can be inserted in the
          document in some rich text editors such as Microsoft Word or can be included in the HTML.
        

Overall, here are listed the specifics you need to know when choosing the appropriate format provider for you requirements:
        XamlFormatProvider

As the XAML format is closest to __RadDocument__'s structure,
              all supported features are imported/exported without the need of additional handling.
            DocxFormatProvider and RtfFormatProvider

Content controls such as Text Box, Combo Box and Date Picker that can be included are currently ignored.
            HtmlFormatProvider

As HTML's concept of headers and footers is different, when exporting with __RadRichTextEditor__headers and footers are ignored. When it comes to importing, the <header> and <footer>
              tags are included in the content of the imported document, but are not interpreted as __Header__
              and __Footer__ of __RadDocument__.
            

Moreover, the __HtmlFormatProvider__ ignores the concept of __Paged__[layout mode]({%slug richtexteditor-getting-started-layout-modes%}) as a whole. Page breaks inserted in
              HTML for printing purposes are also ignored.
            TxtFormatProvider

Imports and exports only plain text.PdfFormatProvider

The current version of __RadRichTextEditor__ can only __export__
              to PDF, but __not import__.
            

## Examples

Here are some examples on how to export and import.

>The "Export to String" and "Import from String" examples are only valid for the text-based format providers (Html, Xaml, Rtf and TxtFormatProvider).
          The "Export to File" and "Import from File" are applicable to each of the format providers (save for PDF import). To use them with the desired format
            just replace the format provider and change the settings of the __SaveFileDialog__ or the __OpenFileDialog__.
          

## Export to String

#### __[C#] __

{{region xaml}}
	        public string ExportToXAML(RadDocument document)
	        {
	            XamlFormatProvider provider = new XamlFormatProvider();
	            return provider.Export(document);
	        }
	{{endregion}}



#### __[VB.NET] __

{{region xaml}}
	    Public Function ExportToXAML(ByVal document As RadDocument) As String
	        Dim provider As New XamlFormatProvider()
	        Return provider.Export(document)
	    End Function
	#End Region
	#Region "docx"
	    Public Sub ExportToDocx(ByVal document As RadDocument)
	        Dim provider As New DocxFormatProvider()
	        Dim saveDialog As New SaveFileDialog()
	        saveDialog.DefaultExt = ".docx"
	        saveDialog.Filter = "Documents|*.docx"
	        Dim dialogResult As DialogResult = saveDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using output As Stream = saveDialog.OpenFile()
	                provider.Export(document, output)
	                MessageBox.Show("Saved Successfuly!")
	            End Using
	        End If
	    End Sub
	#End Region
	
	#Region "importXAML"
	    Public Function ImportXaml(ByVal content As String) As RadDocument
	        Dim provider As New XamlFormatProvider()
	        Return provider.Import(content)
	    End Function
	#End Region
	
	#Region "importDocx"
	    Public Function ImportDocx() As RadDocument
	        Dim document As RadDocument = Nothing
	        Dim provider As IDocumentFormatProvider = New DocxFormatProvider()
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Documents|*.docx"
	        openDialog.Multiselect = False
	        Dim dialogResult As DialogResult = openDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using stream As Stream = openDialog.OpenFile()
	                document = provider.Import(stream)
	            End Using
	        End If
	        Return document
	    End Function
	#End Region
	End Class



## Export to File

#### __[C#] __

{{region docx}}
	        public void ExportToDocx(RadDocument document)
	        {
	            DocxFormatProvider provider = new DocxFormatProvider();
	            SaveFileDialog saveDialog = new SaveFileDialog();
	            saveDialog.DefaultExt = ".docx";
	            saveDialog.Filter = "Documents|*.docx";
	            DialogResult  dialogResult = saveDialog.ShowDialog();
	            if (dialogResult == System.Windows.Forms.DialogResult.OK)
	            {
	                using (Stream output = saveDialog.OpenFile())
	                {
	                    provider.Export(document, output);
	                    MessageBox.Show("Saved Successfuly!");
	                }
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{region docx}}
	    Public Sub ExportToDocx(ByVal document As RadDocument)
	        Dim provider As New DocxFormatProvider()
	        Dim saveDialog As New SaveFileDialog()
	        saveDialog.DefaultExt = ".docx"
	        saveDialog.Filter = "Documents|*.docx"
	        Dim dialogResult As DialogResult = saveDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using output As Stream = saveDialog.OpenFile()
	                provider.Export(document, output)
	                MessageBox.Show("Saved Successfuly!")
	            End Using
	        End If
	    End Sub
	#End Region
	
	#Region "importXAML"
	    Public Function ImportXaml(ByVal content As String) As RadDocument
	        Dim provider As New XamlFormatProvider()
	        Return provider.Import(content)
	    End Function
	#End Region
	
	#Region "importDocx"
	    Public Function ImportDocx() As RadDocument
	        Dim document As RadDocument = Nothing
	        Dim provider As IDocumentFormatProvider = New DocxFormatProvider()
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Documents|*.docx"
	        openDialog.Multiselect = False
	        Dim dialogResult As DialogResult = openDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using stream As Stream = openDialog.OpenFile()
	                document = provider.Import(stream)
	            End Using
	        End If
	        Return document
	    End Function
	#End Region
	End Class



## Import from String

#### __[C#] __

{{region importXAML}}
	        public RadDocument ImportXaml(string content)
	        {
	            XamlFormatProvider provider = new XamlFormatProvider();
	            return provider.Import(content);
	        }
	{{endregion}}



#### __[VB.NET] __

{{region importXAML}}
	    Public Function ImportXaml(ByVal content As String) As RadDocument
	        Dim provider As New XamlFormatProvider()
	        Return provider.Import(content)
	    End Function
	#End Region
	
	#Region "importDocx"
	    Public Function ImportDocx() As RadDocument
	        Dim document As RadDocument = Nothing
	        Dim provider As IDocumentFormatProvider = New DocxFormatProvider()
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Documents|*.docx"
	        openDialog.Multiselect = False
	        Dim dialogResult As DialogResult = openDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using stream As Stream = openDialog.OpenFile()
	                document = provider.Import(stream)
	            End Using
	        End If
	        Return document
	    End Function
	#End Region
	End Class



## Import from File

#### __[C#] __

{{region importDocx}}
	        public RadDocument ImportDocx()
	        {
	            RadDocument document = null;
	            IDocumentFormatProvider provider = new DocxFormatProvider();
	            OpenFileDialog openDialog = new OpenFileDialog();
	            openDialog.Filter = "Documents|*.docx";
	            openDialog.Multiselect = false;
	            DialogResult dialogResult = openDialog.ShowDialog();
	            if (dialogResult == System.Windows.Forms.DialogResult.OK)
	            {
	                using (Stream stream = openDialog.OpenFile())
	                {
	                    document = provider.Import(stream);
	                }
	            }
	            return document;
	        }
	{{endregion}}



#### __[VB.NET] __

{{region importDocx}}
	    Public Function ImportDocx() As RadDocument
	        Dim document As RadDocument = Nothing
	        Dim provider As IDocumentFormatProvider = New DocxFormatProvider()
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Documents|*.docx"
	        openDialog.Multiselect = False
	        Dim dialogResult As DialogResult = openDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using stream As Stream = openDialog.OpenFile()
	                document = provider.Import(stream)
	            End Using
	        End If
	        Return document
	    End Function
	#End Region
	End Class



# See Also

 * [Formatting API]({%slug richtexteditor-getting-started-formatting-api%})

 * [History]({%slug richtexteditor-features-history%})

 * [Settings]({%slug richtexteditor-import-export-settings%})
