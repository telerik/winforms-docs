---
title: Customize Presentation through UI Layers
page_title: Customize Presentation through UI Layers | UI for WinForms Documentation
description: Customize Presentation through UI Layers
slug: winforms/richtexteditor-/how-to/customize-presentation-through-ui-layers
tags: customize,presentation,through,ui,layers
published: True
position: 0
---

# Customize Presentation through UI Layers

__UILayers__ provide an extensible approach to showing different parts of __RadRichTextEditor__ Document. For example, there are separate layers showing the comments, the selection, the table borders, etc.

The existing layers can be removed and additional ones can be defined to customize the presentation of different parts of the document.

## 

All UILayers implement the __IUILayer__ interface. There is an abstract class, which implements this interface -  __DecorationUILayerBase__, and by inheriting it, you can easily define a new layer for custom representations of your document’s layout. The main method to put your logic in is:

{{source=..\SamplesCS\RichTextEditor\HowTo\UILayers.cs region=override}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\UILayers.vb region=override}} 

````C#
public override void UpdateUIViewPortOverride(UILayerUpdateContext context)

````
````VB.NET
Public Overrides Sub UpdateUIViewPortOverride(ByVal context As UILayerUpdateContext)

````

{{endregion}}

You can use the context which is passed as a parameter to the method to get all visible layout boxes and perform your decorations and customizations on them. You can also use the __Document__ property that your decoration layer inherits from __DecorationUILayerBase__ and everything that comes with it (like the current CaretPosition).
        
Last but not least, you should not forget to override the Name property of the layer like this:

{{source=..\SamplesCS\RichTextEditor\HowTo\UILayers.cs region=name}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\UILayers.vb region=name}} 

````C#
public override string Name
{
    get
    {
        return this.customLayerName;
    }
}

````
````VB.NET
Public Overrides ReadOnly Property Name() As String
    Get
        Return Me.customLayerName
    End Get
End Property

````

{{endregion}} 

After having implemented the logic of your custom UI layer, you can plug it in the editor by creating a __CustomUILayerBuilder__.

{{source=..\SamplesCS\RichTextEditor\HowTo\UILayers.cs region=builder}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\UILayers.vb region=builder}} 

````C#
public class CustomLayersBuilder : UILayersBuilder

````
````VB.NET
Public Class CustomLayersBuilder
    Inherits UILayersBuilder

````

{{endregion}} 

You can assign the new builder to specific instance of RadRichTextEditor like this:

{{source=..\SamplesCS\RichTextEditor\HowTo\UILayers.cs region=change}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\UILayers.vb region=change}} 

````C#
this.radRichTextEditor1.RichTextBoxElement.UILayersBuilder = new CustomLayersBuilder();

````
````VB.NET
Me.radRichTextEditor1.RichTextBoxElement.UILayersBuilder = New CustomLayersBuilder()

````

{{endregion}} 

All that is left is to specify the place of your layer, i.e. which layers should be shown above and which - below your layer. This is done in the __BuildUILayersOverride__ method. For example, a layer can be shown under the selection, after the highlighting layer in the following way:

{{source=..\SamplesCS\RichTextEditor\HowTo\UILayers.cs region=build}} 
{{source=..\SamplesVB\RichTextEditor\HowTo\UILayers.vb region=build}} 

````C#
r
    public class CustomLayersBuilder : UILayersBuilder

````
````VB.NET
Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
    uiLayerContainer.UILayers.AddAfter(DefaultUILayers.HighlightDecoration, New CustomDecorationUILayerBase())
End Sub

````

{{endregion}} 



