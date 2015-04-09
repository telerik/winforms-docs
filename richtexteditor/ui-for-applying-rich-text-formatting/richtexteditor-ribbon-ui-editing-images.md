---
title: Editing Images
page_title: Editing Images
description: Editing Images
slug: richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-editing-images
tags: editing,images
published: True
position: 1
---

# Editing Images



This topic contains the following sections:

* [Using the UI](#using-the-ui)

* [Disable Image Editing Capabilities](#disable-image-editing-capabilities)

__RadRichTextEditor__ allow editing images that have been inserted in the editor. Currently you can resize, rotate and drag and drop images.
          The supported image formats are as follows:
      

* JPEG

* PNG

* BMP

## Using the UI

You can resize the image using the adorner that is shown around the image. In addition, the thumb that is shown on
          top allows you to rotate the image.
        ![richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-editing-images 001](images/richtexteditor-ui-for-applying-rich-text-formatting-ribbon-ui-editing-images001.png)

## Disable Image Editing Capabilities

As most features of the editor, the image editing capabilities can be easily disabled.

To remove the image adorner from your application you can create a new __UILayersBuilder__ as shown
          [here]({%slug richtexteditor-how-to-customize-presentation-trought-ui-layers%}) and remove the __AdornerLayer__.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\UI\EditingImages.cs region=layer}}
	        public class CustomLayersBuilder : UILayersBuilder
	        {
	            protected override void BuildUILayersOverride(IUILayerContainer uiLayerContainer)
	            {
	                uiLayerContainer.UILayers.Remove("AdornerLayer");
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\UI\EditingImages.vb region=layer}}
	    Public Class CustomLayersBuilder
	        Inherits UILayersBuilder
	
	        Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	            uiLayerContainer.UILayers.Remove("AdornerLayer")
	        End Sub
	    End Class
	#End Region
	
	End Class



Alternatively, you can disable the capabilities of the image adorner by accessing it though RadRichTextEditor's
          __ImageSelectionAdornerSettings__ property. This allows you to set the bolean properties __CanDrag__,
          __CanResize__ and __CanRotate__ which disable/enable respectively dragging of the
          image, resizing it or rotating it.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\UI\EditingImages.cs region=disable}}
	            this.radRichTextEditor1.ImageSelectionAdornerSettings.CanDrag = false;
	            this.radRichTextEditor1.ImageSelectionAdornerSettings.CanResize = false;
	            this.radRichTextEditor1.ImageSelectionAdornerSettings.CanRotate = false;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\UI\EditingImages.vb region=disable}}
	        Me.radRichTextEditor1.ImageSelectionAdornerSettings.CanDrag = False
	        Me.radRichTextEditor1.ImageSelectionAdornerSettings.CanResize = False
	        Me.radRichTextEditor1.ImageSelectionAdornerSettings.CanRotate = False
	        '#End Region
	    End Sub
	#Region "layer"
	    Public Class CustomLayersBuilder
	        Inherits UILayersBuilder
	
	        Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	            uiLayerContainer.UILayers.Remove("AdornerLayer")
	        End Sub
	    End Class
	#End Region
	
	End Class



# See Also

 * [Inline images]({%slug richtexteditor-document-elements-inline-image%})
