---
title: Information Adorner
page_title: Information Adorner - RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/information-adorner
tags: information,adorner
published: True
position: 6
previous_url: diagram-information-adorner
---

# Information Adorner

__RadDiagram__ shows information tool-tips that appear below the manipulation adorner when you resize, rotate or drag a shape or group of shapes and connections.
      
__RadDiagram__ uses the __ItemInformationAdorner__ to visualize information regarding the position, size and rotation angle of its shapes.  

<snippet id='diagram-information-adorner-enableinformationadorner-cs'/>
<snippet id='diagram-information-adorner-enableinformationadorner-vb'/>

 




Fig.1 visualizes the X and Y component of the current position of the shape when moving. It also visualizes the angle that the shape is rotated to and the current Width and Height of the corresponding shape when resizing.
>caption Figure 1: Information Adorner

![WinForms RadDiagram Information Adorner](images/diagram-information-adorner001.gif)

## Custom ItemInformationAdorner 

__ItemInformationAdorner__ can be customized in order to display additional elements, e.g. a button. To achieve it, you should create a derivative of the __Telerik.WinControls.UI.Diagrams.Primitives.ItemInformationAdorner__ class and override its __CreateChildElements__ method. Here is demonstrated a sample code snippet: 

<snippet id='diagram-information-adorner-customiteminformationadorner-cs'/>
<snippet id='diagram-information-adorner-customiteminformationadorner-vb'/>

 




Now, you should apply the custom __ItemInformationAdorner__ to __DiagramElement__: 

<snippet id='diagram-information-adorner-assigncustomiteminformationadorner-cs'/>
<snippet id='diagram-information-adorner-assigncustomiteminformationadorner-vb'/>

 



>caption Figure 2: Custom Information Adorner

![WinForms RadDiagram Custom Information Adorner](images/diagram-information-adorner002.gif)

# See Also

* [RibbonUI]({%slug winforms/diagram/ribbonui%})	
* [Settings Pane]({%slug winforms/diagram/settings-pane%})	
* [Toolbox]({%slug winforms/diagram/toolbox%})
