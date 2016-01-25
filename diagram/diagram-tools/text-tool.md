---
title: Text Tool
page_title: Text Tool | UI for WinForms Documentation
description: Text Tool
slug: winforms/diagram/diagram-tools/text-tool
tags: text,tool
published: True
position: 1
previous_url: diagram-tools-text-tool
---

# Text Tool



## 

The __TextTool__ allows you to enter the edit mode of a __RadDiagramItem__
        as soon as you click on it. Furthermore, you can use this tool to draw text shapes. As it isn't active by default, you can use the
        RadDiagram.__ActiveTool__ property to activate it:#_[C#] Active Tool_

	



{{source=..\SamplesCS\Diagram\DiagramPopulatingWithData.cs region=ActiveTool}} 
{{source=..\SamplesVB\Diagram\DiagramPopulatingWithData.vb region=ActiveTool}} 

````C#
            
this.radDiagram1.ActiveTool = Telerik.Windows.Diagrams.Core.MouseTool.TextTool;

````
````VB.NET
Me.RadDiagram1.ActiveTool = Telerik.Windows.Diagrams.Core.MouseTool.TextTool

````

{{endregion}} 




Let's consider we already have a shape in __RadDiagram__. As soon as you click on the shape, 
        you will enter its edit mode. This way you can easily modify its content.
        
>caption Fig.1 Edit shape

![diagram-tools-text-tool 001](images/diagram-tools-text-tool001.gif)

And what is more, as soon as you activate the __TextTool__, you can dynamically create a text shape
        by dragging a rectangle on the diagramming surface:
>caption Fig.2 Create shape

![diagram-tools-text-tool 002](images/diagram-tools-text-tool002.gif)
