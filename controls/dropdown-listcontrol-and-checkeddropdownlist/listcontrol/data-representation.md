---
title: Data Representation
page_title: Data Representation - RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation
tags: data,representation
published: True
position: 5
previous_url: dropdown-and-listcontrol-listcontrol-data-representation
---

# Data Representation

This article requires that readers are familiar with the workings of the [TPF]({%slug winforms/telerik-presentation-framework/overview%}) property system.

__RadListControl__  represents a data source by creating an internal logical item that is associated with every data record. This logical item is of type __RadListDataItem__ and it inherits from [RadObject]({%slug winforms/telerik-presentation-framework/class-hierarchy/radobject%}) which means that it offers the full power and flexibility that the TPF property system provides.

__RadListDataItem__ initially has the most basic visual properties required which are used for synchronization between the visuals and the data when a __RadListVisualItem__ is mapped to the data item.  These properties are __TextImageRelation__, __ImageAlignment__, __TextAlignment__, __TextOrientation__, __Image__, __Font__ and __ForeColor__. Users can add additional properties by inheriting from __RadListDataItem__ declaring them in the custom data item. For example: 

#### RadListDataItem

<snippet id='listcontrol-data-representation-customdataitem-cs' />
<snippet id='listcontrol-data-representation-customdataitem-vb' />



 
Once we have the custom data item with the additional information, we can convince __RadListControl__ to use our class when creating logical items by using the __ItemDataBinding__ event. Consider the following code snippet:  

#### using custom data items

<snippet id='listcontrol-data-representation-itemdatabinding-cs' />
<snippet id='listcontrol-data-representation-itemdatabinding-vb' />



 
With this in place we have modified __RadListControl__ to use our type of logical objects which will provide the ability to display custom visual elements, a checkbox for example, in the visual representation of the data items. The next topic describes how to extend the visual items and how to provide the visual synchronization of the additional properties defined for the data item.

# See Also

* [Overview]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol%})
* [RadProperty]({%slug winforms/telerik-presentation-framework/class-hierarchy/radproperty%})
* [Visual Data Representations]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/visual-data-representation%})
