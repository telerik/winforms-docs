---
title: Unbound Mode
page_title: Unbound Mode - WinForms HeatMap Control
description: Populate RadHeatMap control in unbound mode.
slug: heatmap-unbound-mode
tags: heatmap, unbound
published: True
position: 1
---

# Unbound Mode

When in unbound mode, RadHeatMap does not use its DataSource to generate its content. In this article, we will cover the scenarios in which the control is populated programmatically in all available definitions.

## Categorical Definition

In this example, we will showcase the usage of the CategoricalDefinition to illustrate how to add items programmatically. Start by creating an instance of this object and populate its Items collection property with __CategoricalHeatMapItem__ items. These items represent the rows, columns, and values of each category in your data. For instance, you can pass the desired data to the constructor parameters of each __CategoricalHeatMapItem__. If you wish to apply a custom colorizer, you can assign your own instance of the HeatMapGradientColorizer to the Colorizer property of the CategoricalDefinition. This allows you to customize the color scheme according to your preferences.

>note RadHeatMap supports __Empty Values__. In situations where you don't have a specific value for a particular category, you can indicate it by using the special object double.NaN. When a category is marked with double.NaN, the RadHeatMap control will visualize it with **no** color. This visual representation helps to indicate the absence of a value for that specific category. Thus, when using a dark theme, the empty cells remain dark, when using light themes, the empty cells remain light.

#### __Example 1: Categorical Definition__
<snippet id='heatmap-heatmapdatabinding-unboundmode_categoricaldefinition-cs' />
<snippet id='heatmap-heatmapdatabinding-unboundmode_categoricaldefinition-vb' />



![WinForms RadHeatMapMap Unbound Mode CategoricalDefinition](images/heatmap-unbound-mode01.png)

## Horizontal / Vertical Definition

The heatmap can be displayed either horizontally or vertically, depending on the chosen definition. Each column or row is represented by a MemberMapping, which defines how the data will be displayed and colored. The colorization scheme is specified in the MemberMappings associated with the corresponding definition.

To populate the heatmap with data, we add HeatMapItem objects to the "Items" collection of the horizontal or vertical definition. Each HeatMapItem represents a row or column and includes the necessary information, such as the header and an array of values.

>note The only difference between the Horizontal and Vertical definitions is that for the horizontal definition, each item gets a row, while for the vertical – it's a column.

#### __Example 2: Horizontal Definition__
<snippet id='heatmap-heatmapdatabinding-unboundmode_horizontaldefinition-cs' />
<snippet id='heatmap-heatmapdatabinding-unboundmode_horizontaldefinition-vb' />



![WinForms RadHeatMapMap Unbound Mode HorizontalDefinition](images/heatmap-unbound-mode02.png)

Here is how the control will look if we used __VerticalDefinition__ with the same data.

![WinForms RadHeatMapMap Unbound Mode VerticalDefinition](images/heatmap-unbound-mode03.png)

## See Also

* [Structure]({%slug heatmap-structure%})
* [Getting Started]({%slug heatmap-getting-started%})


