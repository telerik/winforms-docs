---
title: Inline Image
page_title: Inline Image - WinForms RichTextEditor Control
description: Winforms RadRichTextEditor supports ImageInline that allows images to be displayed inside the document.
slug: winforms/richtexteditor-/document-elements/inline-image
tags: inline,image
published: True
position: 4
previous_url: richtexteditor-document-elements-inline-image
---

# Inline Image

The __ImageInline__ class allows images to be displayed inside the document. The __ImageInline__ can only be used  in the context of a __Paragraph__ class. As it is an inline element, it gets placed after the previous inline element until the end of the line. If there is no space left, the element will be wrapped on the next line.
      
This topic will explain you how to use the __ImageInline__ element.

## Add in Code Behind

Here is an example of how to add an __ImageInline__ element in the code behind.
  
<snippet id='richtexteditor-inlineimagecode-image-cs' />
<snippet id='richtexteditor-inlineimagecode-image-vb' />



## Add via UI

Here is an example of how to allow the user to select an image and add it to the document. For that purpose a __RadButton__ and an __OpenFileDialog__ are used. When the file stream from the __OpenFileDialog__ gets obtained, it's passed to the __InsertImage()__ API method of __RadRichTextEditor__. This method takes as an argument the extension of the image, which can be again obtained from the __FileInfo__ object. After calling the __InsertImage()__ method, the image will appear in the document with its default width and height.
   
<snippet id='richtexteditor-inlineimagecode-insert-cs' />
<snippet id='richtexteditor-inlineimagecode-insert-vb' />



# See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})

 * [Span]({%slug winforms/richtexteditor-/document-elements/span%})

 * [Editing Images]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/editing-images%})

 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})
