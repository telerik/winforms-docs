---
title: Legend
page_title: Legend - WinForms TreeMap Control
description: Have a look at the WinForms TreeMap's legend.  
slug: winforms-treemap-legend
tags: treemap, legend
published: True
position: 0
---

# Legend

RadTreeMap has built-in support for a legend – descriptions about the treemap data on the plot. The **ShowLegend** property of **RadTreeMap** controls whether the legend is visible or not. The default value is *false*. The legend supports showing a legend title, which text can be set via the **LegendTitle** property of the TreeMapDataItemGroup. A sample approach to populate RadTreeMap with data is demonstrated in the [Unbound Mode]({%slug treemap-unbound-mode%}) article >> *Populating with Data at Run Time* section. 

>caption RadTreeMap's legend

![WinForms RadTreeMap's legend](images/winforms-treemap-legend001.png)

<snippet id='treemap-treemapgettingstarted-legend-cs' />
<snippet id='treemap-treemapgettingstarted-legend-vb' />



The TreeMapElement.LegendElement.**VisualItemCreating** event allows you to create custom legend elements or customize the default ones:

#### Customize the default LegendItemElement

<snippet id='treemap-treemapgettingstarted-formattinglegenditems-cs' />
<snippet id='treemap-treemapgettingstarted-formattinglegenditems-vb' />



![WinForms RadTreeMap Customize the default LegendItemElement](images/winforms-treemap-legend002.png)
 
# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Colorizers]({%slug treemap-colorizers%})

