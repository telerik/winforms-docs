---
title: Headers and Footers
page_title: Headers and Footers | UI for WinForms Documentation
description: Headers and Footers
slug: winforms/wordsprocessing/model/headers-and-footers
tags: headers,and,footers
published: True
position: 9
---

# Headers and Footers



__Header__ and __Footer__ elements are block-container elements, i.e. they can contain Tables and
        Paragraphs. Each [Section]({%slug winforms/wordsprocessing/model/section%}) contains three Header and three Footer instances.
      

* [Inserting Header Footer](#inserting-header/footer)

* [Operating with Headers and Footers ](#operating-with-headers-and-footers)

## Inserting Header/Footer

Headers and Footers are properties of a __Section__ element and each Section can have the following types of Headers and
          Footers:
        

* __Default__: Default header/footer for the __Section__ pages.
            

* __First__: Used on the first page of the __Section__.
            

* __Even__:Used on even numbered pages of the __Section__.
            

>note Visualization of headers and footers is additionally affected by the following properties:
>
*  __RadFlowDocument.HasDifferentEvenOddPageHeadersFooters__ : If set to true, __Even__ header/footer is used for even document pages. If set to false (which is the default), __Even__ header/footer is
                not respected.
*  __Section.HasDifferentFirstPageHeaderFooter__ : if set to true, __First__ header/footer is
                used for the first page of the section. If set to false (which is the default), __First__ header/footer is not
                respected.>


Headers of all __HeaderFooterType__ types can be created using the following code snippet:
        #_[C#] _

	



{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingHeadersAndFooters.cs region=radwordsprocessing-model-headers-footers_0}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingHeadersAndFooters.vb region=radwordsprocessing-model-headers-footers_0}} 

````C#
            RadFlowDocument document = new RadFlowDocument();
            document.Sections.AddSection();

            document.Sections.First().Headers.Add(); // Creates the default Header.
            document.Sections.First().Headers.Add(HeaderFooterType.First);
            document.Sections.First().Headers.Add(HeaderFooterType.Even);
````
````VB.NET
            Dim document As New RadFlowDocument()
            document.Sections.AddSection()

            document.Sections.First().Headers.Add()
            ' Creates the default Header.
            document.Sections.First().Headers.Add(HeaderFooterType.First)
            document.Sections.First().Headers.Add(HeaderFooterType.Even)
            '
````

{{endregion}} 




Footers can be created using the code snippet below:
        #_[C#] _

	



{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingHeadersAndFooters.cs region=radwordsprocessing-model-headers-footers_1}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingHeadersAndFooters.vb region=radwordsprocessing-model-headers-footers_1}} 

````C#
            RadFlowDocument document = new RadFlowDocument();
            document.Sections.AddSection();

            document.Sections.First().Footers.Add(); // Creates the default Footer.
            document.Sections.First().Footers.Add(HeaderFooterType.First);
            document.Sections.First().Footers.Add(HeaderFooterType.Even);
````
````VB.NET
            Dim document As New RadFlowDocument()
            document.Sections.AddSection()

            document.Sections.First().Footers.Add()
            ' Creates the default Footer.
            document.Sections.First().Footers.Add(HeaderFooterType.First)
            document.Sections.First().Footers.Add(HeaderFooterType.Even)
            '
````

{{endregion}} 




>note The __Parent__ property of __Header__ and __Footer__ contains reference to
            the __Section__ from which it is obtained.
>


## Operating with Headers and Footers

You can obtain the Headers and Footers in a Section through the __Default__, __Even__ and
          __First__ properties of its __Headers__ or __Footers__ property. For example, if
          you want to get the default Header element of a Section element, you can use the following line of code:
        #_[C#] _

	



{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingHeadersAndFooters.cs region=radwordsprocessing-model-headers-footers_2}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingHeadersAndFooters.vb region=radwordsprocessing-model-headers-footers_2}} 

````C#
            Header defaultHeader = section.Headers.Default;
````
````VB.NET
            Dim defaultHeader As Header = section.Headers.[Default]
            '
````

{{endregion}} 




Similarly to the Header, the Footer element can be obtained as follows:
        #_[C#] _

	



{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingHeadersAndFooters.cs region=radwordsprocessing-model-headers-footers_3}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingHeadersAndFooters.vb region=radwordsprocessing-model-headers-footers_3}} 

````C#
            Footer defaultFooter = section.Footers.Default;
````
````VB.NET
            Dim defaultFooter As Footer = section.Footers.[Default]
            '
````

{{endregion}} 




>note If header or footer of particular type is not added, the value of the corresponding property is __Null__ .
>


The following code snippet demonstrates how to add different headers for odd and even pages:
        #_[C#] _

	



{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingHeadersAndFooters.cs region=radwordsprocessing-model-headers-footers_4}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingHeadersAndFooters.vb region=radwordsprocessing-model-headers-footers_4}} 

````C#
            RadFlowDocument document = new RadFlowDocument();
            document.Sections.AddSection();
            document.HasDifferentEvenOddPageHeadersFooters = true;

            Header defaultHeader = document.Sections.First().Headers.Add();
            Paragraph defaultHeaderParagraph = defaultHeader.Blocks.AddParagraph();
            defaultHeaderParagraph.TextAlignment = Alignment.Right;
            defaultHeaderParagraph.Inlines.AddRun("This is a sample odd page header.");

            Header evenHeader = document.Sections.First().Headers.Add(HeaderFooterType.Even);
            Paragraph evenHeaderParagraph = evenHeader.Blocks.AddParagraph();
            evenHeaderParagraph.TextAlignment = Alignment.Left;
            evenHeaderParagraph.Inlines.AddRun("This is a sample even page header.");
````
````VB.NET
            Dim document As New RadFlowDocument()
            document.Sections.AddSection()
            document.HasDifferentEvenOddPageHeadersFooters = True

            Dim defaultHeader As Header = document.Sections.First().Headers.Add()
            Dim defaultHeaderParagraph As Paragraph = defaultHeader.Blocks.AddParagraph()
            defaultHeaderParagraph.TextAlignment = Alignment.Right
            defaultHeaderParagraph.Inlines.AddRun("This is a sample odd page header.")

            Dim evenHeader As Header = document.Sections.First().Headers.Add(HeaderFooterType.Even)
            Dim evenHeaderParagraph As Paragraph = evenHeader.Blocks.AddParagraph()
            evenHeaderParagraph.TextAlignment = Alignment.Left
            evenHeaderParagraph.Inlines.AddRun("This is a sample even page header.")
            '
````

{{endregion}} 




### Linking headers/footers to previous Section headers/footers

When visualizing flow documents, applications may apply additional rules for evaluating the header/footer which should be presented on a
              particular page. If header/footer of given type is omitted for a __Section__, it is inherited from the previous section
              (also known as "linked to previous"), or – if this is the first section – blank header/footer is used.
            

For example, if a document with two sections is created and __Default__, __Even__ and
              __Odd__ properties are set to headers (footers) only for the first section, the second section is visualized with the
              same set of headers (footers). If you want to explicitly set blank headers (footers) for a given section, you should explicitly set them to
              blank headers (footers).
            

# See Also

 * [HeaderFooterBase API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_headerfooterbase.html)

 * [Document model]({%slug winforms/wordsprocessing/model%})

 * [Section]({%slug winforms/wordsprocessing/model/section%})
