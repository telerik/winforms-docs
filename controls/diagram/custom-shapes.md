---
title: Custom shapes
page_title: Custom shapes - RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications. 
slug: winforms/diagram/custom-shapes
tags: custom,shapes
published: True
position: 15
previous_url: diagram-custom-shapes
---

# Custom shapes

This tutorial will guide you through the task of creating a custom shape.

## Creating custom shapes programmatically

In order to create a custom shape, you need to define a custom shape class deriving from the __ElementShape__ class. Overriding its __CreatePath__ method you can define the desired shape. Afterwards, you need to apply your shape implementation to the RadDiagramShape.__ElementShape__ property: 

<snippet id='diagram-custom-shapes-myshape-cs' />
<snippet id='diagram-custom-shapes-myshape-vb' />



<snippet id='diagram-custom-shapes-applycustomshape-cs' />
<snippet id='diagram-custom-shapes-applycustomshape-vb' />



![WinForms RadDiagram Custom Shapes](images/diagram-custom-shapes001.png)

## Creating custom shapes by the Custom Shape Editor

When you open the RadDiagram Property Builder from the Smart Tag and drag a shape from the toolbox you can customize the default shape  by editing the __ElementShape__ property and selecting the *Create new custom shape ...* option from the list:

![WinForms RadDiagram Shape Editor](images/diagram-custom-shapes002.png)

This will display the [Custom Shape Editor]({%slug winforms/tools/shapeeditor/using-the-custom-shape-editor/launching-the-shape-editor%}).
        
![WinForms RadDiagram Custom Shape using Editor](images/diagram-custom-shapes003.png)

# See Also

* [ShapeEditor Tool]({%slug winforms/tools/shapeeditor%})
