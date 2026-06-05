---
title: Customize Presentation through UI Layers
page_title: Customize Presentation through UI Layers - WinForms RichTextEditor Control
description: UILayers provide an extensible approach to showing different parts of WinForms RichTextEditor Document. 
slug: winforms/richtexteditor-/how-to/customize-presentation-through-ui-layers
tags: customize,presentation,through,ui,layers
published: True
position: 0
previous_url: richtexteditor-how-to-customize-presentation-trought-ui-layers
---

# Customize Presentation through UI Layers

__UILayers__ provide an extensible approach to showing different parts of __RadRichTextEditor__ Document. For example, there are separate layers showing the comments, the selection, the table borders, etc.

The existing layers can be removed and additional ones can be defined to customize the presentation of different parts of the document.

All UILayers implement the __IUILayer__ interface. There is an abstract class, which implements this interface -  __DecorationUILayerBase__, and by inheriting it, you can easily define a new layer for custom representations of your document’s layout. The main method to put your logic in is:

<snippet id='richtexteditor-uilayers-override-cs' />
<snippet id='richtexteditor-uilayers-override-vb' />



You can use the context which is passed as a parameter to the method to get all visible layout boxes and perform your decorations and customizations on them. You can also use the __Document__ property that your decoration layer inherits from __DecorationUILayerBase__ and everything that comes with it (like the current **CaretPosition**).
        
Last but not least, you should not forget to override the **Name** property of the layer like this:

<snippet id='richtexteditor-uilayers-name-cs' />
<snippet id='richtexteditor-uilayers-name-vb' />



After having implemented the logic of your custom UI layer, you can plug it in the editor by creating a __CustomUILayerBuilder__.

<snippet id='richtexteditor-uilayers-builder-cs' />
<snippet id='richtexteditor-uilayers-builder-vb' />



You can assign the new builder to specific instance of **RadRichTextEditor** like this:

<snippet id='richtexteditor-uilayers-change-cs' />
<snippet id='richtexteditor-uilayers-change-vb' />



All that is left is to specify the place of your layer, i.e. which layers should be shown above and which - below your layer. This is done in the __BuildUILayersOverride__ method. For example, a layer can be shown under the selection, after the highlighting layer in the following way:

<snippet id='richtexteditor-uilayers-overridebuild-cs' />
<snippet id='richtexteditor-uilayers-overridebuild-vb' />



