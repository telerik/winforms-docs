---
title: InlinieUIContainer
page_title: InlinieUIContainer | UI for WinForms Documentation
description: InlinieUIContainer
slug: winforms/richtexteditor-/document-elements/inlinieuicontainer
tags: inlinieuicontainer
published: True
position: 6
---

# InlinieUIContainer



__RadRichTextEditor__ provides you with the functionality of enclosing custom UI elements in its document. That is achieved with the help of a special type of inline document element called __InlineUIContainer__, which can wrap any object of type System.Windows.__UIElement__, e.g. a button, an image.
      

This topic will explain you how to:

* [Add UI Element to an InlineUIContainer](#add-ui-element-to-an-inlineuicontainer)

* [Import Export InlineUIContainers](#import-export-inlineuicontainers)

The __InlineUIContainer__ is an inline element, so it should be placed in a __Block__ that can contain inline elements (e.g. the __Paragraph__).
      

## Add UI Element to an InlineUIContainer

You can add any element that derives from the RadElement class inside the __RadElementUIContainer__. In code, set the __UIElement__ property of the container to an instance of __RadElementUIContainer__. Here is a simple example with a __Button__.
        

>note In order to utilize the __InlineUIContainer__ , you have to set its __Height__ and __Width__ explicitly (or use the constructor that takes a __Size__ as a parameter). Otherwise, it will not shown in the document.
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

##  Import Export InlineUIContainers
      

Most features that __RadRichTextEditor__ provides are also supported in the format providers that it uses for export and import. Currently import/export UIElement is only supported with HtmlFormatProvider.
        

* __Exporting with HtmlFormatProvider__ - the inline UI containers are serialized as XML and are included in the HTML as comments.  If the user handles the __InlineUIContainerExporting__ event, they can provide their own implementation for the export of the UI elements by accessing the properties of the __InlineUIContainerExportingEventArgs__ and setting the ones they need. The CommentContent contains the XML serialization and the __HtmlContent__ string property can be set to the desired user-defined HTML equivalent of the UI element. It will appear when the page is rendered outside RadRichTextEditor. The UI element can also be omitted from the document altogether.
            
>caption Figure 1: The  InlineUIContainerExporting event.

![richtexteditor-document-elements-inlineuicontainer 001](images/richtexteditor-document-elements-inlineuicontainer001.png)

* __Importing with HtmlFormatProvider__ – there is a property of the HtmlFormatProvider class called __HtmlImportSettings__, which provides two events – __InlineUIContainerImporting__ and __InlineUIContainerImported__.  The __EventArgs__ of these events have the same properties, as the ones that the __InlineUIContainerExporting__ event of __HtmlExportSettings__ has. Thus, even if you have not implemented custom export of inline UI containers, you can process the XML comments on import and provide your own logic to create the serialized objects, set their properties and insert them in the Document.
            

>tip For more information on Import/Export, please refer to [this topic]({%slug winforms/richtexteditor/import%}).
>

