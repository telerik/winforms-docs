---
title: Diagram Factory
page_title: Diagram Factory - RadDiagram
description: DiagramDataLayerElementProvider provides means for creating custom shape/connections while binding.
slug: winforms/diagram/diagram-factory
tags: custom,shapes
published: True
position: 15
---

# Diagram Factory

Since **R2 2018 SP1** **RadDiagram** provides means for changing the default shape/connection elements when binding to an external **DataSource**.

If you need to customize any of the **RadDiagram** shapes/connections you can use the **DiagramDataLayerElementProvider** class. It allows you to replace the default elements with custom ones. This can be achieved by creating a **DiagramDataLayerElementProvider** descendant class and overriding the **CreateShape** and **CreateConnection** methods. Then, set the DiagramElement.DataLayer.ElementFactory property before data binding.

<snippet id='diagram-diagram-factory-customelementprovider-cs' />
<snippet id='diagram-diagram-factory-customelementprovider-vb' />



 
# See Also

* [Custom shapes]({%slug winforms/diagram/custom-shapes%})
