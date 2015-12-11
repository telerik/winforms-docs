---
title: Settings
page_title: Settings | UI for WinForms Documentation
description: Settings
slug: winforms/pdfprocessing/formats-and-conversion/plain-text-settings
tags: using,textformatprovider, settings
published: True
position: 2
---


# Settings

__TextFormatProvider__ allows for export of __RadFixedDocument__ to txt. Additionally, the export settings provide modification options. This article outlines the available settings.

Through the __TextFormatProviderSettings__ class you could specify the following export settings:

* **LinesSeparator**: Determines the string used to separate the lines in the document. The default value is __Environment.NewLine__.


* **PagesSeparator**: Determines the string, which will be used to separate the pages in the document. The default value is __*"----------- Page{0} ------------"*__.


## Create TextFormatProviderSettings

The constructor of the **TextFormatProviderSettings** class has two overloads:

* **TextFormatProviderSettings()**: Initializes a new instance of the class and sets the default values for its properties.

* **TextFormatProviderSettings(string linesSeparator, string pagesSeparator)**: Initializes a new instance of the class and sets the specified values for its properties.

**Example 1** shows how to create and specify a particular setting.

#### Example 1: Create TextFormatProviderSettings

{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextSettings.cs region=CreateSettings}} 
{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextSettings.vb region=CreateSettings}}



{{endregion}}

## Using TextFormatProviderSettings

The __Export()__ method of **TextFormatProvider** allows you to pass a **TextFormatProviderSettings** instance. 

**Example 2** illustrates how to apply the settings created in **Example 1**, when exporting a **RadFixedDocument** to string.

#### Example 2: Apply TextFormatProviderSettings

{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextSettings.cs region=ApplySettings}} 
{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextSettings.vb region=ApplySettings}}

````C#
RadFixedDocument document = CreateRadFixedDocument();
TextFormatProvider provider = new TextFormatProvider();
string text = provider.Export(document, settings);

````
````VB.NET
Dim document As RadFixedDocument = CreateRadFixedDocument()
Dim provider As New TextFormatProvider()
Dim text As String = provider.Export(document, settings)
````

{{endregion}}


# See Also

* [Using TextFormatProvider]({%slug winforms/pdfprocessing/formats-and-conversion/plain-text%})
