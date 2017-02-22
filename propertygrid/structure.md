---
title: Structure
page_title: Structure | RadPropertyGrid
description: This article describes the inner structure and organization of the elements which build the RadPanel control.
slug: winforms/propertygrid/structure
tags: radpanel,structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadPanel** control.

Like all Telerik WinForms controls **RadPanel** is build upon [Telerik Presentation Framework (TPF)]({%slug winforms/telerik-presentation-framework/overview%}). **TPF** consists of various elements (such as primitives and layouts) that are the building blocks of the controls.

>caption Figure 1: RadPanel`s Element Hierarchy

![propertygrid structure 001](images/propertygrid-structure001.png)

>caption Figure 2: RadPanel`s Structure

![propertygrid structure 002](images/propertygrid-structure002.png)

* **RadPanelElement**: Represents the main element of the control.
  * **FillPrimitive**: Background color of the control
  * **BorderPrimitive**: Responsible for the control`s borders
  * **TextPrimitive**: Sets the properties of the text portion of the control.
        
# See Also

* [Design Time]({%slug winforms/panels-and-labels/panel/design-time%})
* [Getting Started]({%slug winforms/panels-and-labels/panel/getting-started%})