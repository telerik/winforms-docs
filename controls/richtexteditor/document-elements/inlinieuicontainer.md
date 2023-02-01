---
title: InlinieUIContainer
page_title: InlinieUIContainer - RadRichTextEditor
description: RadRichTextEditor is a control that allows you to display and edit rich text content including sections, paragraphs, spans, italic text, bold text, inline images, tables etc.
slug: winforms/richtexteditor-/document-elements/inlinieuicontainer
tags: inlinieuicontainer
published: True
position: 6
previous_url: richtexteditor-document-elements-inlineuicontainer
---

# InlineUIContainer
 
__RadRichTextEditor__ provides you with the functionality of enclosing custom UI elements in its document. That is achieved with the help of a special type of inline document element called __InlineUIContainer__, which can wrap any object of type System.Windows.__UIElement__, e.g. a button, an image.
      
This topic will explain you how to:

* [Add UI Element to an InlineUIContainer](#add-ui-element-to-an-inlineuicontainer)

* [Import Export InlineUIContainers](#import-export-inlineuicontainers)

The __InlineUIContainer__ is an inline element, so it should be placed in a __Block__ that can contain inline elements (e.g. the __Paragraph__).      

## Add UI Element to an InlineUIContainer

You can add any element that derives from the **RadElement** class inside the __RadElementUIContainer__. In code, set the __UIElement__ property of the container to an instance of __RadElementUIContainer__. Here is a simple example with a button.
        
>note In order to utilize the __InlineUIContainer__ , you have to set its __Height__ and __Width__ explicitly (or use the constructor that takes a __Size__ as a parameter). Otherwise, it will not shown in the document.
>

>note The following article contains more information about the element types which can be used inside the document: [Elements Overview]({%slug winforms/telerik-presentation-framework/elements/overview%}).
>

{{source=..\SamplesCS\RichTextEditor\DocumentElements\UIContainerCode.cs region=add}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\UIContainerCode.vb region=add}} 

````C#
            
RadButtonElement button = new RadButtonElement();
button.Text = "My Button";
            
Section section = new Section();
Paragraph paragraph = new Paragraph();
InlineUIContainer container = new InlineUIContainer();
RadElementUIContainer radContainer = new RadElementUIContainer(button);
container.UiElement = radContainer;
container.Height = 25;
container.Width = 70;
paragraph.Inlines.Add(container);
section.Blocks.Add(paragraph);
this.radRichTextEditor1.Document.Sections.Add(section);

````
````VB.NET
Dim button As New RadButtonElement()
button.Text = "My Button"
Dim section As New Section()
Dim paragraph As New Paragraph()
Dim container As New InlineUIContainer()
Dim radContainer As New RadElementUIContainer(button)
container.UiElement = radContainer
container.Height = 25
container.Width = 70
paragraph.Inlines.Add(container)
section.Blocks.Add(paragraph)
Me.radRichTextEditor1.Document.Sections.Add(section)

````

{{endregion}} 

## Specifics

>note InlineUIContainer elements are not copyable.

The following scenarios are affected:

* Drag-and-drop operation
* Copy/paste operation
* Update of the layout when the InlineUIContainer is in the header/footer
* Print operation

The reason is that copying **InlineUIContainer** involves cloning of the internal UIElement, which cannot be handled in a generic way.

To enable copying of **InlineUIContainers** in your application, you can create a custom object, which can copy the UIElement inside the container. What you need to do is to inherit the **InlineUIContainer** class and override **IsCopyable**, **CreateNewElementInstance**(), **CopyPropertiesFromOverride**(). The container and its parts are copied in the **CopyPropertiesFromOverride**() method, so you should ensure that the override copies the UIElement inside the container as well.

#### Implement CopyableInlineUIContainer for a RadButtonElement as underlying UIElement

{{source=..\SamplesCS\RichTextEditor\DocumentElements\UIContainerCode.cs region=CopyableContainer}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\UIContainerCode.vb region=CopyableContainer}} 

````C#
            


````
````VB.NET


````

{{endregion}} 


##  Import Export InlineUIContainers      

Most features that __RadRichTextEditor__ provides are also supported in the format providers that it uses for export and import. Currently import/export UIElement is only supported with __HtmlFormatProvider__. If your document has any inline UI elements by default they will be exported/imported when the __HtmlFormatProvider__ is used.

* **XamlFormatProvider**: Inline UI containers are serialized as expected when exporting, thus ensuring lossless export in simple cases, e.g. when a button is in the container. When importing, all inline UI containers are deserialized and imported.
        
* __Exporting with HtmlFormatProvider__ - the inline UI containers are serialized as XML and are included in the HTML as comments. If the user handles the __InlineUIContainerExporting__ event, they can provide their own implementation for the export of the UI elements by accessing the properties of the __InlineUIContainerExportingEventArgs__ and setting the ones they need. The CommentContent contains the XML serialization and the __HtmlContent__ string property can be set to the desired user-defined HTML equivalent of the UI element. It will appear when the page is rendered outside **RadRichTextEditor**. The UI element can also be omitted from the document altogether.
            
	![WinForms RadRichTextEditor VS Suggestion DropDown](images/richtexteditor-document-elements-inlineuicontainer001.png)

* __Importing with HtmlFormatProvider__ – there is a property of the **HtmlFormatProvider** class called __HtmlImportSettings__, which provides two events – __InlineUIContainerImporting__ and __InlineUIContainerImported__. The __EventArgs__ of these events have the same properties, as the ones that the __InlineUIContainerExporting__ event of __HtmlExportSettings__ has. Thus, even if you have not implemented custom export of inline UI containers, you can process the XML comments on import and provide your own logic to create the serialized objects, set their properties and insert them in the Document.

* **DocxFormatProvider**: All InlineUIContainers are ignored when exporting as the Microsoft Word concept of controls is quite different. When importing, there cannot be any inline UI containers in DOCX, as they are not exported in the first place.When importing, there cannot be any inline UI containers in RTF, as they are not exported in the first place.

* **RtfFormatProvider**: All InlineUIContainers are ignored when exporting as the RTF standard does not have a concept for similar elements.

* **PdfFormatProvider**: PDF import is currently not supported. The **InlineUIContainers** are taken a snapshot of and included in the export. If you like, you can prevent that by setting the **InlineUIContainersExportMode** property of the provider to *None*.

	![WinForms RadRichTextEditor InlineUIContainersExportMode Options](images/richtexteditor-document-elements-inlineuicontainer002.png)
            
>tip For more information on Import/Export, please refer to [this topic](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/import-export/overview).
>

