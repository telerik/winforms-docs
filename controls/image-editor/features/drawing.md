---
title: Drawing
page_title: Drawing - WinForms ImageEditor Control
description: WinForms ImageEditor supports drawing of text and shapes or drawing with a pen.
slug: radimageeditor-tools-drawing
tags: drawing
published: True
position: 7
---

# Drawing

There are 3 options that you can use to draw on the image.

* [Draw Text](#draw-text)
* [Draw Shape](#draw-shape)
* [Draw with a Pen](#draw-with-a-pen)

>caption Figure 1: Draw Buttons

![WinForms RadImageEditor Draw Buttons](images/image-editor-draw001.png)


## Draw Text

To draw text click the button and the __DrawText__ dialog will be shown. In it you need to provide the text and set various other options.

>caption Figure 2: DrawText Dialog

![WinForms RadImageEditor DrawText Dialog](images/image-editor-draw002.png)


### Drawing text programmatically

The following snippet shows how you can add text using the RadImageEditor API.

<snippet id='image-editor-imageeditorfeatures-drawtext-cs' />
<snippet id='image-editor-imageeditorfeatures-drawtext-vb' />



## Draw Shape

When the Draw Shape button is pressed the DrawShape dialog appears. In this dialog you can specify the type and the size of the shape. You can set its colors as well. 

>caption Figure 3: DrawShape Dialog

![WinForms RadImageEditor DrawShape Dialog](images/image-editor-draw005.png)

Once you are ready with the settings you can draw your shape with the mouse.

>caption Figure 4: Drawing Shapes

![WinForms RadImageEditor Drawing Shapes](images/image-editor-draw003.png)

The currently supported shapes are:
* FreeFlow
* Rectangle
* Square
* Ellipse
* Circle
* Arrow 

### Draw Shape Programmatically

To draw a shape in the code behind you need to provide a path. The bellow code demonstrates how you ca create a RoundRectShape: 

<snippet id='image-editor-imageeditorfeatures-drawshape-cs' />
<snippet id='image-editor-imageeditorfeatures-drawshape-vb' />



## Draw with a Pen

When the Draw button is pressed the Draw dialog appears. In this dialog you can specify the size and the color of the brush. One you are done you can directly star drawing on the image surface. 

>caption Figure 1: Draw Dialog

![WinForms RadImageEditor Draw Dialog](images/image-editor-draw004.png)


# See Also

* [Getting Started]({%slug radimageeditor-getting-started%})
* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})
