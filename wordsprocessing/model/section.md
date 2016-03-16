---
title: Section
page_title: Section | UI for WinForms Documentation
description: Section
slug: winforms/wordsprocessing/model/section
tags: section
published: True
position: 1
previous_url: wordsprocessing-model-section
---

# Section

__Section__ is a BlockContainer element which can contain other block elements. You can customize its layout through its properties.
      

* [Inserting a Section](#inserting-a-section)

* [Modifying a Section](#modifying-a-section)

* [Operating with a Section](#operating-with-a-section)

## Inserting a Section

You can use the following code snippet to create a __Section__ element and add it to a [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}):

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_0}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_0}} 

````C#
Telerik.Windows.Documents.Flow.Model.Section section = new Telerik.Windows.Documents.Flow.Model.Section(document);
document.Sections.Add(section);

````
````VB.NET
Dim section As New Telerik.Windows.Documents.Flow.Model.Section(document)
document.Sections.Add(section)

````

{{endregion}} 

You can also use the __AddSection()__ method of the __Sections__ collection of a document. The  method creates a new Section element, adds it to the document and returns it:

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_1}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_1}} 

````C#
Telerik.Windows.Documents.Flow.Model.Section section = document.Sections.AddSection();

````
````VB.NET
Dim section As Telerik.Windows.Documents.Flow.Model.Section = document.Sections.AddSection()

````

{{endregion}} 

## Modifying a Section

The __Section__ exposes several properties that allow you to customize the layout of the elements placed underneath it.

* __PageMargins__: Represents the margin towards the edges of the page.

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_2}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_2}} 

````C#
section.PageMargins = new Telerik.Windows.Documents.Primitives.Padding(10, 10, 5, 5);

````
````VB.NET
section.PageMargins = New Telerik.Windows.Documents.Primitives.Padding(10, 10, 5, 5)

````

{{endregion}} 

* __PageOrientation__: Specifies if the pages in the section should be in Portrait or in Landscape orientation.  This property is used to determine the actual size of the paper to use on the printer and does not reflect the document's visualization. In order to show the document in different mode you can use the [Rotate](#--------rotating-a-section------) method.

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_3}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_3}} 

````C#
section.PageOrientation = PageOrientation.Landscape;

````
````VB.NET
section.PageOrientation = PageOrientation.Landscape

````

{{endregion}} 

* __PageSize__: Specifies the size of the pages in the section. The __PaperTypeConverter__ class and the [PaperTypes](http://www.telerik.com/help/winforms/t_telerik_windows_documents_model_papertypes.html) enumeration provide convenient API and predefined sizes out of the box.

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_4}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_4}} 

````C#
section.PageSize = PaperTypeConverter.ToSize(PaperTypes.A4);

````
````VB.NET
section.PageSize = PaperTypeConverter.ToSize(PaperTypes.A4)

````

{{endregion}}

* __Headers and Footers__: Each Section has three Headers and three Footers - __Default__ (used all through the section), __First__ (used on the first page of the section) and __Even__ (used on even pages of the document). The three Headers are contained in the Headers class accessible through the __Section.Headers__ property. The three Footers are contained in the Footers class accessible through the __Section.Footers__ property. Here is a how you can create default Header:

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_5}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_5}} 

````C#
Telerik.Windows.Documents.Flow.Model.Header header = section.Headers.Add();
Telerik.Windows.Documents.Flow.Model.Paragraph paragraph = header.Blocks.AddParagraph();
paragraph.TextAlignment = Alignment.Right;
paragraph.Inlines.AddRun("This is a sample header.");

````
````VB.NET
Dim header As Telerik.Windows.Documents.Flow.Model.Header = section.Headers.Add()
Dim paragraph As Telerik.Windows.Documents.Flow.Model.Paragraph = header.Blocks.AddParagraph()
paragraph.TextAlignment = Alignment.Right
paragraph.Inlines.AddRun("This is a sample header.")

````

{{endregion}} 

>tip More information on how to work with the different types of headers and footer can be found in the[Headers and Footers]({%slug winforms/wordsprocessing/model/headers-and-footers%})article.
>

* __SectionType__: Defines the section types:
            

  * __NextPage__ - specifies that the section starts on the next page.
                

  * __EvenPage__ - specifies that the section starts on the next page.
                

  * __OddPage__ - specifies that the section starts on the next odd page.
                

  * __Continuous__ - specifies that the section starts on the same page.
                

  * __NextColumn__ - specifies that the section starts on the next column on the page.
                

  * __VerticalAlignment__ - Defines the vertical alignment:
                

    * __Top__ – specifies the section layout is top aligned. This is the default value.
                    

    * __Bottom__ – specifies the section layout is bottom aligned.
                    

    * __Center__ – specifies the section layout is center aligned.
                    

    * __Justified__ – specifies the section layout is justified.
                    

  * __PageNumberingSettings__ - Defines page numbering settings. You can modify the settings through the following properties:
                

    * __ChapterSeparatorCharacter__ – specifies the chapter separator character that shall appear between the chapter heading style index and the page number.
                    

    * __ChapterHeadingStyleIndex__ – specifies the index of the chapter heading style. The possible values are from 1 to 9 inclusive (Heading1, Heading2…).
                    

    * __PageNumberFormat__ – specifies the number format for the page numbering in the current section.
                    

    * __StartingPageNumber__ – specifies the starting page number which shall appear on the first page of the section. The possible values are 0 or greater.
                    

* __Properties__: Gets all section properties as __SectionProperties__ object. More info on how  to use section properties can be found in [ Style Properties]({%slug winforms/wordsprocessing/concepts/style-properties%}) article.
            

## Operating with a Section

Section derives [BlockContainerBase](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_blockcontainerbase.html), inheriting Blocks property of BlockCollection type. You can add [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%})  and [Table]({%slug winforms/wordsprocessing/model/table%}) objects to that collection:

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_6}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_6}} 

````C#
Telerik.Windows.Documents.Flow.Model.Paragraph paragraph = section.Blocks.AddParagraph();
Telerik.Windows.Documents.Flow.Model.Table table = section.Blocks.AddTable();

````
````VB.NET
Dim paragraph As Telerik.Windows.Documents.Flow.Model.Paragraph = section.Blocks.AddParagraph()
Dim table As Telerik.Windows.Documents.Flow.Model.Table = section.Blocks.AddTable()

````

{{endregion}} 

## Rotating a Section

The __Section__ can be rotated in order to visualize its pages in Portrait or Landscape mode:

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingSection.cs region=radwordsprocessing-model-section_7}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingSection.vb region=radwordsprocessing-model-section_7}} 

````C#
section.Rotate(PageOrientation.Landscape);

````
````VB.NET
section.Rotate(PageOrientation.Landscape)

````

{{endregion}} 

# See Also

 * [Section API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_section.html)

 * [Model]({%slug winforms/wordsprocessing/model%})

 * [Lists]({%slug winforms/wordsprocessing/concepts/lists%})

 * [Style Properties]({%slug winforms/wordsprocessing/concepts/style-properties%})
