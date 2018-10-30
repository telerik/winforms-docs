---
title: Import/Export Settings
page_title: Import/Export Settings | UI for WinForms Documentation
description: Import/Export Settings
slug: winforms/richtextbox-(obsolete)/features/import/export/import/export-settings
tags: import/export,settings
published: True
position: 1
previous_url: richtextbox-features-import-export-import-export-settings
---

# Import/Export Settings



## 

As sometimes the formats may support several ways for presenting one and the same content, some customization options have been provided in order to specify the result which the user expects. This is achieved with the help of import and export settings, which some format providers expose (__HtmlFormatProvider__ and __PdfFormatProvider__). You need to create an instance of the settings and assign it to the property of the provider you will be using. Then, you can set (or retrieve) the properties you need. __HtmlFormatProvider__ makes use of __HtmlExportSettings__ and __HtmlImportSettings__ to control import/export.

1\. __HtmlExportSettings__ provides the following options:

  * __DocumentExportLevel__ – you can choose between __Document__ and __Fragment__. __Document__ is the default value, which includes the HTML declaration, the __<HTML>__, __<TITLE>__, __<HEAD>__ and __<BODY>__ tags, whereas setting the document export level to __Fragment__ results in exporting the content of the __<BODY>__ tag only.

  * __StylesExportMode__ – the options here are __Inline__ and __Classes__, the default one being __Classes__. Predefined classes is the preferred way for setting styles, yet inline styles may be useful with regard to the consumer of the HTML. For instance, in order to use the exported HTML in __Telerik Reporting__, the __StylesExportMode__ needs to be set to __Inline__.

  * __ImageExportMode__ – the user can choose between several options or even provide his own implementation by choosing the __ImageExportingEvent__ option for the __ImageExportMode__ property and handling the __ImageExportingEvent__. The __UriSource__ option can be used if you want to export an image by setting its __src__ property to the __URL__ rather than having the raw data in the exported document.

2\. __HtmlImportSettings__ provides the following options: 

  * __UseDefaultStylesheetForFontProperties__ – a __Boolean__ property indicating whether the default font properties of RadRichTextBox or the defaults in the HTML specification should be used for the elements that do not set their __FontSize__, __FontFamily__, __FontWeight__ and __FontStyle__ explicitly.

  * __LoadImageFromUrl__ event – this event was introduced at a time when __HtmlFormatProvider__ did not automatically load images from URLs. The feature is currently supported out of the box, but this event can be useful if using virtual directories and files on the server.

__PdfFormatProvider__ exposes an __ExportSettings__ property of type __PdfExportSettings__, which can be used in the same way as the export settings of __HtmlFormatProvider__.

__PdfExportSettings__ include the following options:

* __ContentsCompressionMode__ – this property allows you to choose if you wish to make use of compression (by setting it to __Deflate__ or __Automatic__) or not (__PdfContentsCompressionMode.None__) of the text content of the document.

* __ContentsDeflaterCompressionLevel__ – an integer between -1 and 9, used to get or set the compression level to be used when deflating the content of the document.  Default Compression is __-1__, No Compression is __0__ and Best Compression is __9__;

* __ImagesCompressionMode__ – the user can choose between __None__, __Jpeg__ (supported only for images, imported as JPEG), Deflate (the deflate algorithm will be applied to compress the images) or __Automatic__ (the best algorithm will be automatically decided upon for you).

* __ImagesDeflaterCompressionLevel__ – same as __ContentsDeflaterCompressionLevel__, but applied to the images in the document. This property is respected when an image is compressed with __Deflate__.

>tip __PDF import__ is currently __not__ supported, so there are not any import settings.
>

>tip There are not any __Import__ or __ExportSettings__ for __XAML__ either, as the __XAML__ serialization is lossless and all elements are imported and exported as they would appear  if declared in a __XAML__ page in the application. __DocxFormatProvider__ does not currently provide any settings as the document content is matched as closely as possible to the Word document.
>

