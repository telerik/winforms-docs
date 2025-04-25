---
title: Getting Started
page_title: Getting Started - WinForms Diagram Control
description: WinForms Diagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/getting-started
tags: getting,started
published: True
position: 2
previous_url: diagram-getting-started
---

# Getting Started with WinForms Diagram

This article shows how you can start using **RadDiagram**.

## Adding Telerik Assemblies Using NuGet

To use `RadDiagram` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.RadDiagram__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadDiagram

Telerik __RadDiagram__ are powerful diagramming framework that can bring to life your rich data-visualization scenarios. 

This tutorial will walk you through the main concepts and tools of __RadDiagram__ while helping you to create the flow diagram of an "if-else" operator.

![WinForms RadDiagram Getting Started](images/diagram-getting-started001.png)

## Graph Object Model

The graph object model is the main concept behind the diagramming framework. It contains the following three main objects:

* __graph__ - this is the structure that contains the __RadDiagramShapes__ and __RadDiagramConnections__. In the Telerik Diagramming Framework the graph is represented by the __RadDiagram__ class.
            

* __shape__ - the shape describes a node of a Graph that in the Telerik Diagramming Framework is represented by the __RadDiagramShape__ class.
            

* __connection__ - the connection describes the edges of the graph and it is basically an object that connects zero, one or two shapes. In the Telerik Diagramming Framework the connection is represented by the __RadDiagramConnection__ class.
            

>note The __RadDiagram__ items are represented by the __RadDiagramItem__ class. Therefore both __RadDiagramConnection__ and __RadDiagramShape__ classes derive from the __RadDiagramItem__ class.
 
In order to populate __RadDiagram__ with __RadDiagramItems__ you can add __RadDiagramShapes__ and __RadDiagramConnections__ by using the Property Builder.

![WinForms RadDiagram Open Property Builder](images/diagram-getting-started002.png)

![WinForms RadDiagram Add DiagramItems DiagramConnections](images/diagram-getting-started003.png)

The Property Builder allows you to drag a shapes from the [RadDiagramToolbox]({%slug winforms/diagram/toolbox%}) and drop it onto the __RadDiagram__ surface. Afterwards, you can connect several shapes by using the connectors. The [RadDiagramRibbonBar]({%slug winforms/diagram/ribbonui%}) gives you a set of options to customize the diagram and save the changes as well.
      

In order to create a diagram describing the flow of an "if-else" operator, you will need 4 shapes - two will represent the statements, one will describe the condition and one will represent the final result of the operator.

>note The __RadDiagramShape__ exposes an __ElementShape__ property that allows you to create a custom geometry or use predefined shape geometry.
 
![WinForms RadDiagram DiagramShape Custom Geometry](images/diagram-getting-started004.png)

Finally, you can connect all shapes using __RadDiagramConnections__.


## See Also

* [Structure]({%slug winforms/diagram/structure%})
* [Design Time]({%slug winforms/diagram/design-time%})
* [Toolbox]({%slug winforms/diagram/toolbox%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Diagram Component](https://www.telerik.com/products/winforms/diagram.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

