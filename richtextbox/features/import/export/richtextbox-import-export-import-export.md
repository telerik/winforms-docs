---
title: Import/Export
page_title: Import/Export
description: Import/Export
slug: richtextbox-features-import-export-import-export
tags: import/export
published: True
position: 0
---

# Import/Export



## 

The RadRichTextBox allows you to export and import its content. This is useful in case you want to save the user's input
        	into a data base and then load it from there, or if you want to save/load the content of the RadRichTextBox to/from a file.
        	To import and export you have to use a specific class that implements the __Telerik.WinControls.RichTextBox.FormatProviders.IDocumentFormatProvider__.
        	You can find built-in classes, that implement this interface, for each of the supported formats. Currently the RadRichTextBox 
        	can export and import the following formats:
        

* __XAML__ - to import/export __XAML__ documents you have to use the __XamlFormatProvider__ class from the Telerik.WinControls.RichTextBox.FileFormats.Xaml namespace.
      

* __DOCX__ - to import/export __DOCX__ documents you have to use the __DocxFormatProvider__ class from the Telerik.WinControls.RichTextBox.FileFormats.OpenXml.Docx namespace.
      

* __HTML__ - to import/export __HTML__ documents you have to use the __HtmlFormatProvider__ class from the Telerik.WinControls.RichTextBox.FileFormats.Html namespace.
      

* __RTF__ - to import/export __RTF__ documents you have to use the __RtfFormatProvider__ class from the Telerik.WinControls.RichTextBox.FileFormats.Rtf namespace.
			

* __Plain text__ - to import/export plain text documents you have to use the __TxtFormatProvider__ class from the Telerik.WinControls.RichTextBox.FormatProviders.Txt namespace.
      

* __PDF__ - to export documents to __PDF__ you have to use the __PdfFormatProvider__ class from the Telerik.WinControls.RichTextBox.FileFormats.Pdf namespace.
      

Here are some examples on how to export and import.

>The "Export to String" and "Import from String" examples are only valid for the text-based format providers (Html, Xaml, Rtf and TxtFormatProvider). 
			The "Export to File" and "Import from File" are applicable to each of the format providers (save for PDF import). 
			To use them with the desired format just replace the format provider and change the settings of the __SaveFileDialog__
			or the __OpenFileDialog__ When importing, simply set the returned document to the __RadRichTextBox1.Document__.

      

__Export to String__

#### __[C#] Export to String__

{{source=..\SamplesCS\RichTextBox\Features\ImportExport\RichTextBoxImportExport.cs region=ExportToXAML}}
	        public string ExportToXAML(RadDocument document)
	        {
	            XamlFormatProvider provider = new XamlFormatProvider();
	            return provider.Export(document);
	        }
	{{endregion}}



#### __[VB.NET] Export to String__

{{source=..\SamplesVB\RichTextBox\Features\ImportExport\RichTextBoxImportExport.vb region=ExportToXAML}}
	    Public Function ExportToXAML(ByVal document As RadDocument) As String
	        Dim provider As New XamlFormatProvider()
	        Return provider.Export(document)
	    End Function
	{{endregion}}



__Export to File__

#### __[C#] Export to File__

{{source=..\SamplesCS\RichTextBox\Features\ImportExport\RichTextBoxImportExport.cs region=ExportToDocx}}
	        public void ExportToDocx(RadDocument document)
	        {
	            DocxFormatProvider provider = new DocxFormatProvider();
	            SaveFileDialog saveDialog = new SaveFileDialog();
	            saveDialog.DefaultExt = ".docx";
	            saveDialog.Filter = "Documents|*.docx";
	            DialogResult dialogResult = saveDialog.ShowDialog();
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



#### __[VB.NET] Export to File__

{{source=..\SamplesVB\RichTextBox\Features\ImportExport\RichTextBoxImportExport.vb region=ExportToDocx}}
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
	{{endregion}}



__Import from String__

#### __[C#] Import from String__

{{source=..\SamplesCS\RichTextBox\Features\ImportExport\RichTextBoxImportExport.cs region=ImportXaml}}
	        public RadDocument ImportXaml(string content)
	        {
	            XamlFormatProvider provider = new XamlFormatProvider();
	            return provider.Import(content);
	        }
	{{endregion}}



#### __[VB.NET] Import from String__

{{source=..\SamplesVB\RichTextBox\Features\ImportExport\RichTextBoxImportExport.vb region=ImportXaml}}
	    Public Function ImportXaml(ByVal content As String) As RadDocument
	        Dim provider As New XamlFormatProvider()
	        Return provider.Import(content)
	    End Function
	{{endregion}}



__Import from File__

#### __[C#] Import from File__

{{source=..\SamplesCS\RichTextBox\Features\ImportExport\RichTextBoxImportExport.cs region=ImportDocx}}
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
	                using (FileStream stream = new FileStream(openDialog.FileName, FileMode.Open))
	                {
	                    document = provider.Import(stream);
	                }
	            }
	            return document;
	        }
	{{endregion}}



#### __[VB.NET] Import from File__

{{source=..\SamplesVB\RichTextBox\Features\ImportExport\RichTextBoxImportExport.vb region=ImportDocx}}
	    Public Function ImportDocx() As RadDocument
	        Dim document As RadDocument = Nothing
	        Dim provider As IDocumentFormatProvider = New DocxFormatProvider()
	        Dim openDialog As New OpenFileDialog()
	        openDialog.Filter = "Documents|*.docx"
	        openDialog.Multiselect = False
	        Dim dialogResult As DialogResult = openDialog.ShowDialog()
	        If dialogResult = System.Windows.Forms.DialogResult.OK Then
	            Using stream As New FileStream(openDialog.FileName, FileMode.Open)
	                document = provider.Import(stream)
	            End Using
	        End If
	        Return document
	    End Function
	{{endregion}}


