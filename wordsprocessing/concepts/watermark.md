---
title: Watermark
page_title: Watermark | UI for WinForms Documentation
description: Watermark
slug: winforms/wordsprocessing/concepts/watermark
tags: watermark
published: True
position: 7
previous_url: wordsprocessing-concepts-watermark
---

# Watermark

Watermarks are text or pictures that appear behind document content and often identify the document status, for example by marking it as Draft.

## Watermark Overview

The class representing a watermark is Watermark and exposes the following properties:

* __WatermarkType__: The type of the watermark, described with the WatermarkType enumeration.

* __Image__: Watermark containing an image.

* __Text__: Watermark containing text.

* __ImageSettings__: Determines the settings of the watermark if it is of type __Image__.  Derives from __WatermarkSettingsBase__ and exposes a property of type __ImageSource__ specifying the source of the image.

* __TextSettings__: Determines the settings of the watermark if it is of type __Text__. Derives from __WatermarkSettingsBase__ and exposes additional properties __Text__, __FontFamily__  and __Color__ specifying the appearance of the text.

__WatermarkSettingsBase__ is the base class for text and image watermark settings and defines the appearance of the watermark on a page. It exposes the following properties:

* __Width__: The width of the watermark.

* __Height__: The height of the watermark.

* __Angle__: The angle of the watermark towards the horizontal direction.

## Create a Watermark

Creating a watermark through the constructor of the class requires to pass as a parameter an object of type __TextWatermarkSettings__ or __ImageWatermarkSettings__, depending on the type of watermark you want to create.

__Example 1__ demonstrates the creation of a text watermark.

#### Example 1: Create Text Watermark

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingWatermark.cs region=radwordsprocessing-concepts-watermark_0}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingWatermark.vb region=radwordsprocessing-concepts-watermark_0}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.Watermarks.TextWatermarkSettings settings = new Telerik.Windows.Documents.Flow.Model.Watermarks.TextWatermarkSettings()
{
    Angle = 12,
    Width = 200,
    Height = 300,
    Opacity = 0.4,
    FontFamily = new System.Windows.Media.FontFamily("Verdana"),
    ForegroundColor = Colors.Red,
    Text = "DRAFT"
}; 
Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark textWatermark = new Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark(settings);

````
````VB.NET
Dim settings As New Telerik.Windows.Documents.Flow.Model.Watermarks.TextWatermarkSettings() With { _
    .Angle = 12, _
    .Width = 200, _
    .Height = 300, _
    .Opacity = 0.4, _
    .FontFamily = New System.Windows.Media.FontFamily("Verdana"), _
    .ForegroundColor = Colors.Red, _
    .Text = "DRAFT" _
}
Dim textWatermark As New Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark(settings)

````

{{endregion}} 

Creating image watermark is very similar to creating a text one. __Example 2__ shows how to create an image watermark.

#### Example 2: Create Image Watermark

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingWatermark.cs region=radwordsprocessing-concepts-watermark_1}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingWatermark.vb region=radwordsprocessing-concepts-watermark_1}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark imageWatermark = new Watermark(new ImageWatermarkSettings()
{
    Angle = 45,
    Width = 50,
    Height = 75,
    ImageSource = new Telerik.Windows.Documents.Media.ImageSource(imageStream, "png")
});

````
````VB.NET
Dim imageWatermark As Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark = New Telerik.Windows.Documents.Flow.Model.Watermarks.Watermark(New ImageWatermarkSettings() With {
    .Angle = 45, _
    .Width = 50, _
    .Height = 75, _
    .ImageSource = New Telerik.Windows.Documents.Media.ImageSource(imageStream, "png")})

````

{{endregion}}

## Set Watermark

Watermarks are preserved in the header of the section to which the watermark is applied. More information on __Header__ elements and how you can use them is available in the [Headers and Footers]({%slug winforms/wordsprocessing/model/headers-and-footers%}) article.        

__Example 3__ demonstrates how you can add the watermark created in __Example 1__ to a __RadFlowDocument__ by creating a __Header__ for its first __Section__.

#### Example 3: Add Watermark to Header

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingWatermark.cs region=radwordsprocessing-concepts-watermark_2}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingWatermark.vb region=radwordsprocessing-concepts-watermark_2}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.Header header = document.Sections.First().Headers.Add(Telerik.Windows.Documents.Flow.Model.HeaderFooterType.Default); 
header.Watermarks.Add(textWatermark);

````
````VB.NET
Dim header As Telerik.Windows.Documents.Flow.Model.Header = document.Sections.First().Headers.Add(Telerik.Windows.Documents.Flow.Model.HeaderFooterType.[Default])
header.Watermarks.Add(textWatermark)

````

{{endregion}}

>note By default, if header is omitted for a __Section__ other than the first one, it is inherited from the previous __Section__ . The watermark set in __Example 3__ will be implicitly inherited by all sections following the first one since watermarks are preserved in the header.
>

There is another way to set a watermark in a document - through the [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}) helper class.  __RadFlowDocumentEditor__ exposes two overloads of the __SetWatermark__ method that provide a simplified way to set a watermark.

__Example 4__ demonstrates how to set the watermark created in __Example 2__ through __RadFlowDocumentEditor__ to the first page of a section. The method will create the __Header__ element for you, and you only need to specify its type.

#### Example 4: Set Watermark With RadFlowDocumentEditor

{{source=..\SamplesCS\WordsProcessing\Concepts\WordsProcessingWatermark.cs region=radwordsprocessing-concepts-watermark_3}} 
{{source=..\SamplesVB\WordsProcessing\Concepts\WordsProcessingWatermark.vb region=radwordsprocessing-concepts-watermark_3}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor editor = new Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor(document);       
Telerik.Windows.Documents.Flow.Model.Section section = editor.Document.Sections.AddSection(); 
editor.SetWatermark(imageWatermark, section, Telerik.Windows.Documents.Flow.Model.HeaderFooterType.First);

````
````VB.NET
Dim editor As New Telerik.Windows.Documents.Flow.Model.Editing.RadFlowDocumentEditor(document)
Dim section As Telerik.Windows.Documents.Flow.Model.Section = editor.Document.Sections.AddSection()
editor.SetWatermark(imageWatermark, section, Telerik.Windows.Documents.Flow.Model.HeaderFooterType.First)

````

{{endregion}}

# See Also

 * [Headers and Footers]({%slug winforms/wordsprocessing/model/headers-and-footers%})

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})
