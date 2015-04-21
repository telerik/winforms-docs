---
title: Clipping
page_title: Clipping
description: Clipping
slug: pdfprocessing-concepts-clipping
tags: clipping
published: True
position: 1
---

# Clipping



__Clipping__ is a content element that can be used to define the outline of other content elements like [Image]({%slug pdfprocessing-model-image%}) and [Path]({%slug pdfprocessing-model-path%}).
      

## Creating a Clipping

The __Clipping__ element exposes a single property.
        

* __Clip__: Property of type __GeometryBase__ representing the [Geometry]({%slug pdfprocessing-concepts-geometry%}) that is used to clip the content element.
            

__Example 1__ demonstrates how you can create a Clipping element and assign a __RectangeGeometry__ to its Clip property.
        

#### __[C#] Example 1: Create Clipping__

{{source=..\SamplesCS\PdfProcessing\Concepts\PdfProcessingConceptsClipping.cs region=radpdfprocessing-concepts-clipping_0}}
	            Clipping clipping = new Clipping();
	            clipping.Clip = new RectangleGeometry(new Rect(5, 5, 50, 50));
	{{endregion}}



#### __[VB.NET] Example 1: Create Clipping__

{{source=..\SamplesVB\PdfProcessing\Concepts\PdfProcessingConceptsClipping.vb region=radpdfprocessing-concepts-clipping_0}}
	        Dim clipping As Telerik.Windows.Documents.Fixed.Model.Clipping = New Telerik.Windows.Documents.Fixed.Model.Clipping()
	        clipping.Clip = New RectangleGeometry(New Rect(5, 5, 50, 50))
	{{endregion}}



## Using Clipping

All inheritors of the __ContentElementBase__ class expose a __Clipping__ property. Setting it clips the respective content element with the specified clipping. 
        

__Example 2__ demonstrates how to clip an image using the Clipping created in __Example 1__.
        

#### __[C#] Example 2: Use Clipping__

{{source=..\SamplesCS\PdfProcessing\Concepts\PdfProcessingConceptsClipping.cs region=radpdfprocessing-concepts-clipping_1}}
	            Telerik.Windows.Documents.Fixed.Model.Objects.Image image = container.Content.AddImage(imageSource);
	            image.Clipping = clipping;
	{{endregion}}



#### __[VB.NET] Example 2: Use Clipping__

{{source=..\SamplesVB\PdfProcessing\Concepts\PdfProcessingConceptsClipping.vb region=radpdfprocessing-concepts-clipping_1}}
	        Dim image As Telerik.Windows.Documents.Fixed.Model.Objects.Image = container.Content.AddImage(imageSource)
	        image.Clipping = clipping
	{{endregion}}



# See Also

 * [Geometry]({%slug pdfprocessing-concepts-geometry%})
