---
title: RadDocument
page_title: RadDocument
description: RadDocument
slug: richtextbox-features-document-elements-raddocument
tags: raddocument
published: True
position: 1
---

# RadDocument



__RadDocument__ is the root element for __RadRichTextBox's__ content.
      	It holds the collection of __Sections__ defined for the __RadRichTextBox__ 
      	content. It also allows you to configure the appearance of its child elements. Currently only one section in the 
      	document is supported and all declared sections are merged into one when the document is measured.
      

This topic will explain how you can customize the contents of the RadDocument

## Customize the contents of the RadDocument

__RadDocument__ exposes several properties that allow you to customize the layout of the 
        	elements placed underneath it. Here is a list of them:
        

* __DefaultPageLayoutSettings__ - this property is of type 
            __PageLayoutSettings__. The __PageLayoutSettings__ class 
            exposes the following properties:
         
          

* __Height__ - represents the height of the page.

* __Width__ - represents the width of the page.

>The __DefaultPageLayoutSettings__ get applied only when Paged layout mode is used.
            

* __LayoutMode__ - specifies whether the page should be in __Paged__ 
            or __Flow__ layout mode. To learn more about layout modes read   
            [here.]({%slug richtextbox-features-layout-modes%})

* __LineSpacing__ - specifies the value for the space between the lines.

* __LineSpacingType__ - specifies the type of spacing:
          	
          	

* __AtLeast__ - the space between the lines should equal or greater than the value of the __LineSpacing__ property.

* __Auto__ - the space between the lines is determined automatically.

* __Exact__ - ____the space between the lines should equal to the value of the __LineSpacing__ property.

* __PageViewMargin__ - represents the margins of the pages towards the __RadRichTextBox__ borders. 

* __ParagraphDefaultSpacingAfter__ - defines the default spacing after each of the paragraphs in the __RadDocument__. To assign different spacing after each of the paragraphs use the respective property of the __Paragraph__ class.

* __ParagraphDefaultSpacingBefore__ - defines the default spacing before each of the paragraphs in the __RadDocument__. To assign different spacing before each of the paragraphs use the respective property of the __Paragraph__ class.

* __SectionDefaultPageMargin__ - defines the default margin for each of the sections in the RadDocument. To assign different margins for each of the sections use the respective property of the __Section__class.

* __ShowFormattingSymbols__ - indicates whether the formatting symbols should be displayed or not. 
