---
title: Settings
page_title: Settings - WinForms RichTextEditor Control
description: HtmlFormatProvider allows for import of HTML documents and respectively export of WinForms RichTextEditor to HTML. 
slug: winforms/richtexteditor/import-export/html/settings
tags: import/export
published: True
position: 1
---

# Settings

__HtmlFormatProvider__ allows for import of HTML documents and respectively export of RadRichTextEditor to HTML. Additionally, the import/export settings provide modification options. The current article outlines the available settings.

## Export Settings

__HtmlFormatProvider__ exposes __ExportSettings__, which allow you to control the export of the RadRichTextEditor document.

### ExportSettings Properties

* __DocumentExportLevel__: A property of type DocumentExportLevel that gets or sets which element tags should be exported.
	* __Document__: This is the default value. Includes the HTML declaration, more specifically &lt;HTML&gt;, &lt;TITLE&gt;, &lt;HEAD&gt; and &lt;BODY&gt; tags.
	* __Fragment__: When this setting is applied, only the HTML &lt;BODY&gt; tag will be exported.	
* __ExportBoldAsStrong__: A property of type __bool__ that controls whether elements with font-weight bold are exported as <strong> tag.
* __ExportEmptyDocumentAsEmptyString__: A property of type __bool__ that gets or sets whether an empty document should be exported as an empty string. The default value of this property is __false__.
* __ExportFontStylesAsTags__: A property of type __bool__ that gets or sets whether the font styles should be exported as tags. Specifies if &lt;i&gt;, &lt;b&gt; and &lt;u&gt; tags should be used instead of setting properties as elements of a style.
* __ExportHeadingsAsTags__:  A property of type __bool__ that gets or sets whether Heading styles should be exported as HTML heading tags (&lt;h1&gt;, &lt;h2&gt; etc.).
* __ExportItalicAsEm__: A property of type __bool__ that controls whether elements with font weight italic are exported as &lt;em&gt; tag.
* __ExportLocalOrStyleValueSource__: A property of type __bool__. Gets or sets whether only properties which have local or style value source will be exported.
* __ExportStyleMetadata__: A property of type __bool__ that sets whether the additional metadata should be exported when exporting CSS classes.
* __ImageExportMode__: A property of type __ImageExportMode__ that gets or sets how the image should be exported. This property is an enumeration and it allows the following values:
	* __None__: Images are not exported.
	* __AutomaticInline__:  The best mode to export the image is chosen automatically.
	* __Base64EncodedSplit__: Images are inline Base64 encoded and split into parts laid out in a table.
	* __Base64Encoded__: Images are inline Base64 encoded.
	* __ImageExportingEvent__: Event is fired on exporting. 
	* __UriSource__:  The UriSource property is set as src attribute of the img tag.	
* __PropertiesToIgnore__: A property of type __Dictionary__ that allows you add properties which will not be exported for certain HTML tags. The full collection of properties that can be excluded is demonstrated in __Example 1__.
* __SpanExportMode__: A property of type __SpanExportMode__ that gets or sets how the spans in the document are exported. This option does not affect the content of the span but only how the span tag is exported. This property is an enumeration and it allows the following values:
	* __DefaultBehavior__: HTML &lt;span&gt; tags will be exported when they have styling.
	* __AlwaysExport__: HTML &lt;span&gt; tags will be always exported.
* __StyleRepositoryExportMode__: A property of type __StyleRepositoryExportMode__ that gets or sets the style repository export mode. This property is an enumeration and it allows the following values:
	* __ExportStylesAsCssClasses__:  Export styles from the document styles repository to CSS classes.
	* __DontExportStyles__:  Don't export styles from the document styles repository.
* __StylesExportMode__: A property of type __StylesExportMode__ that gets or sets the styles export mode. This controls how the properties of the document elements will be exported.
	* __Classes__: Create CSS classes containing properties of document elements.
	* __Inline__: Inline properties of document elements using style attribute.	
* __Title__: A property of type __string__ that allows you to set a Title to the generated HTML file. 

#### Exclude Properties
<snippet id='richtexteditor-htmlformatproviderform-excludeproperties-cs' />
<snippet id='richtexteditor-htmlformatproviderform-excludeproperties-vb' />



### Telerik Reporting

In order to achieve best compatibility of the generated HTML with __Telerik Reporting__, you should apply the following settings:  
* __DocumentExportLevel__: Fragment;  
* __StylesExportMode__: Inline;
* __StyleRepositoryExportMode__: DontExportStyles;
* __ExportFontStylesAsTags__: true.

### ExportSettings Events
* __CssClassExporting__: This event is fired on every attempt to export a CSS class. The CssClassExporting event is triggered only when StyleRepositoryExportMode is set to ExportStylesAsCssClasses.
* __FloatingUIContainerExporting__: This event is fired on every attempt to export a __FloatingUIContainer__.
* __ImageExporting__: This event is fired only when the respective option of ImageExportMode is applied.
* __InlineUIContainerExporting__: This event is fired on every attempt to export an __InlineUIContainer__. For more information, please refer to the article about InlineUIContainers.
		
#### ExportSettings of the HtmlFormatProvider
<snippet id='richtexteditor-htmlformatproviderform-htmlexportsettings-cs' />
<snippet id='richtexteditor-htmlformatproviderform-htmlexportsettings-vb' />



## Import Settings

__HtmlFormatProvider__ exposes __ImportSettings__, which allow you to control the import of the HTML file.

### ImportSettings Properties
* __UseDefaultStylesheetForFontProperties__: A property of type __bool__ that indicates whether the default font properties of RadRichTextEditor or the defaults in the HTML specification should be used for the elements that do not set their FontSize, FontFamily, FontWeight and FontStyle explicitly.
* __UseHtmlHeadingStyles__: A property of type __bool__ that indicates whether the heading style of the imported HTML should be imported or not.

### ImportSettings Events

* __FloatingUIContainerImporting__: This event is fired on every attempt to import a __FloatingUIContainer__.
* __FloatingUIContainerImported__: This event is fired every time when the __FloatingUIContainer__ is imported.
* __FontSubstituting__: This event allows you to handle the cases when the __HTML__ source specifies a Font that is not available to the RichTextBox.
* __InlineUIContainerImported__: This event is fired every time when the __InlineUIContainer__ is imported.
* __InlineUIContainerImporting__: This event is fired on every attempt to import a __InlineUIContainer__.
* __LoadImageFromUrl__: This event was introduced at a time when __HtmlFormatProvider__ did not automatically load images from URLs. The feature is currently supported out of the box, but this event can be useful if using virtual directories and files on the server.

#### ImportSettings of the HtmlFormatProvider
<snippet id='richtexteditor-htmlformatproviderform-htmlimportsettings-cs' />
<snippet id='richtexteditor-htmlformatproviderform-htmlimportsettings-vb' />



## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Using HtmlFormatProvider]({%slug winforms/richtexteditor/import-export/html/htmlformatprovider%})
