---
title: Definition Types
page_title: Definition Types - WinForms HeatMap Control
description: Check our &quot;Definition Types&quot; documentation article for the RadHeatMap WinForms control.
slug: heatmap-definition-types
tags: heatmap, definition
published: True
position: 4
---

# Definition Types

You can visualize the data differently based on the heat map definition. There are two main definitions types - Categorical and Horizontal/Vertical. 

## CategoricalDefinition

Used to group the data by rows and columns. It has a single colorizer for all content cells. The cells are colorized by their value which is extracted from the ValueMember field. 

#### CategoricalDefinition

{{source=..\SamplesCS\HeatMap\HeatMapDefinitions.cs region=CategoricalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDefinitions.vb region=CategoricalDefinition}} 

````C#
        


````
````VB.NET




````

{{endregion}} 

![heatmap-definition-types001](images/heatmap-definition-types001.png)


## Horizontal

{{source=..\SamplesCS\HeatMap\HeatMapDefinitions.cs region=HorizontalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDefinitions.vb region=HorizontalDefinition}} 

````C#
        


````
````VB.NET




````

{{endregion}}

## Vertical

{{source=..\SamplesCS\HeatMap\HeatMapDefinitions.cs region=VerticalDefinition}} 
{{source=..\SamplesVB\HeatMap\HeatMapDefinitions.vb region=VerticalDefinition}} 

````C#
        


````
````VB.NET




````

{{endregion}}


## See Also

* [Structure]({%slug heatmap-structure%}) 

