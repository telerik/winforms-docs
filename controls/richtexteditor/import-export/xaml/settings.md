---
title: Settings
page_title: Settings - WinForms RichTextEditor Control
description: XamlFormatProvider allows for import of XAML documents and respectively export of WinForms RichTextEditor to XAML file.
slug: winforms/richtexteditor/import-export/xaml/settings
tags: import/export
published: True
position: 1
---

# Settings

__XamlFormatProvider__ allows for import of XAML documents and respectively export of RadRichTextEditor to XAML file. Additionally, the import/export settings provide modification options. The current article outlines the available settings.


## Export Settings

__XamlFormatProvider__ exposes __ExportSettings__, which allow you to control the export of the RadRichTextEditor document.

### Export Settings Properties
* __ImageExportMode__: A property of type __ImageExportMode__ that gets or sets how the image should be exported. This property is an enumeration and it allows the following values:
	* __None__: Images are not exported.
	* __RawData__: Images are exported using their RawData.
	* __ImageExportingEvent__:  Event is fired on exporting.
	* __UriSource__: The UriSource property is used instead of RawData. Bare in mind that this property may not be set on all images.
	
### Export Settings Events
* __ImageExporting__: This event is fired every time before exporting an Image.
* __InlineUIContainerExporting__: This event is fired every time before exporting an __InlineUIContainer__.

>These events will be called when the __ImageExportMode__ enumeration property is set to __ImageExportingEvent__.

#### Setting the ExportSettings of the XamlFormatProvider
{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=SetupXamlExportSettings}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=SetupXamlExportSettings}}
````C#
XamlFormatProvider xamlFormatProvider = new XamlFormatProvider();
XamlExportSettings settings = new XamlExportSettings();
settings.ImageExportMode = ImageExportMode.UriSource;
xamlFormatProvider.ExportSettings = settings;

````
````VB.NET
Dim xamlFormatProvider As XamlFormatProvider = New XamlFormatProvider()
Dim settings As XamlExportSettings = New XamlExportSettings()
settings.ImageExportMode = ImageExportMode.UriSource
xamlFormatProvider.ExportSettings = settings

````



{{endregion}}

## Import Settings

__XamlFormatProvider__ exposes __ImportSettings__, which allow you to control the import of the XAML file.

### Import Settings Events 
* __ImageImported__: This event is fired every time when the __Image__ is imported.
* __InlineUIContainerImported__: This event is fired every time when the __InlineUIContainer__ is imported.

#### Setting the ImportSettings of the XamlFormatProvider
{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=SetupXamlImportSettings}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=SetupXamlImportSettings}}
````C#
XamlFormatProvider xamlFormatProvider = new XamlFormatProvider();
XamlImportSettings settings = new XamlImportSettings();
xamlFormatProvider.ImportSettings = settings;
settings.ImageImported += XamlImportSettings_ImageImported;

````
````VB.NET
Dim xamlFormatProvider As XamlFormatProvider = New XamlFormatProvider()
Dim settings As XamlImportSettings = New XamlImportSettings()
xamlFormatProvider.ImportSettings = settings
AddHandler settings.ImageImported, AddressOf XamlImportSettings_ImageImported

````



{{endregion}}

#### ImageImported Event 
{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=ImageImportedEvent}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=ImageImportedEvent}}
````C#
private void XamlImportSettings_ImageImported(object sender, ImageImportedEventArgs e)
{
    var img = e.Image;
}

````
````VB.NET
Private Sub XamlImportSettings_ImageImported(ByVal sender As Object, ByVal e As ImageImportedEventArgs)
    Dim img = e.Image
End Sub

````



{{endregion}}


## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Using XamlFormatProvider]({%slug winforms/richtexteditor/import-export/xaml/xamlformatprovider%})