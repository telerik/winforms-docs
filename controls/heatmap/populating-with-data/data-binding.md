---
title: Data Binding
page_title: Data Binding - WinForms HeatMap Control
description: Bind the WinForms HeatMap either at design time or at run time.   
slug: heatmap-data-binding
tags: heatmap, binding
published: True
position: 0
---

# Data Binding

Data binding is a mechanism for the automatic population of the RadHeatMap with items, based on the provided data structure. 

## Setting up the Model and the Sample Data

In order to demonstrate how to populate a __RadHeatMap__ with data, we will create a sample object that will hold temperature information and create a collection of those objects.

#### __Example 1: Setting up the model__

<snippet id='heatmap-heatmapdatabinding-bind_model-cs' />
<snippet id='heatmap-heatmapdatabinding-bind_model-vb' />



#### __Example 2: Creating Sample Data__

<snippet id='heatmap-heatmapdatabinding-bind_sampledata-cs' />
<snippet id='heatmap-heatmapdatabinding-bind_sampledata-vb' />



## Definitions

In order to visualize our data we need to set the Definition property of the control. The control works with few different definitions that describe how to data will be shown: __CategoricalDefinition, VerticalDefinition, HorizontalDefinition__. We will populate the control using each of the definitions.

### Categorical Definition

The definition provides few properties to define what data should be used.

* __RowGroupMember__: Contains the name of the property in the custom model that will be used to generate the rows.
* __ColumnGroupMember__: Contains the name of the property in the custom model that will be used to generate the columns.
* __ValueMember__: Contains the name of the property in the custom model that will be used to generate the cells. Based on that value the cell will be colored differently.

The __RowGroupMember__ in our example, will point to a __DateTime__ type property. To format the DateTime value, we can use the __RowHeaderTextFormat__ property of the control. The __ColumnGroupMember__ will represent the Month property. What's left is to set our value for the cell through the __ValueMember__, which in our case will be the Temperature property value.

#### __Example 3: Categorical Definition__
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_categoricaldefinition-cs' />
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_categoricaldefinition-vb' />



![WinForms RadHeatMapMap Data Binding Categorical Definition](images/heatmap-data-binding01.png)

### Vertical Definition

Alternatively, we can also use a __VerticalDefinition__. We'll set the months as __HeaderPath__ of our HeatMap. Thus the months supplied by the Month property of our underlying source will be visualized as column headers. For each row, we'll display the Temperature and Rain values of the corresponding month. However, this setup may not clearly indicate which month belongs to which year. To address this, we can customize the column headers by subscribing to the HeaderCellPainting event of the control. Within the event handler, we can specifically target the column header row and retrieve information about the associated data item from the first data cell in the column.

#### __Example 4: Vertical Definition__
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_verticaldefinition-cs' />
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_verticaldefinition-vb' />



![WinForms RadHeatMapMap Data Binding Vertical Definition](images/heatmap-data-binding02.png)

### Horizontal Definition

This definition closely resembles the __VerticalDefinition__, with the distinction that the property value of our underlying source, specifically the __HeaderMember__ property, will be represented as row headers. To accommodate this, we must make adjustments to the __HeaderCellPainting__ event handler to correctly handle the row headers instead of the column headers.

#### __Example 5: Horizontal Definition__
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_horizontaldefinition-cs' />
<snippet id='heatmap-heatmapdatabinding-bind_sampledata_horizontaldefinition-vb' />



![WinForms RadHeatMapMap Data Binding Horizontal Definition](images/heatmap-data-binding03.png)

## Design Time

It is possible to specify the data member properties via the Smart Tag. The following tutorial demonstrates how to bind the heat map control to a BindingSource object in the current form.

![WinForms RadHeatMapMap Data Binding Design Time](images/heatmap-data-binding04.png)
 
## See Also

* [Structure]({%slug heatmap-structure%})
* [Getting Started]({%slug heatmap-getting-started%})
* [Unbound Mode]({%slug heatmap-unbound-mode%})
