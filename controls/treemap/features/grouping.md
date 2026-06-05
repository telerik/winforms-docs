---
title: Grouping
page_title: Grouping - WinForms TreeMap Control
description: Get familiar with the grouping functionality in the WinForms TreeMap's control.  
slug: winforms-treemap-grouping
tags: treemap, grouping
published: True
position: 1
---

# Grouping

**RadTreeMap** supports grouping for its data items combining the pieces belonging to the same group with a similar color/palette. 

When using [unbound mode]({%slug treemap-unbound-mode%}), it is necessary to add a **TreeMapDataItemGroup** specifying the group **Text** and **LegendTitle**. Then, specify the **Group** property for each **TreeMapDataItem**. The group items can be added either at design time via the *TreeMapDataItemGroup Collection Editor* or at run time. Read more in the following help article: [Unbound Mode]({%slug treemap-unbound-mode%}). 

>caption Adding Groups at Design Time

![WinForms RadTreeMap Adding Groups at Design Time](images/winforms-treemap-grouping001.png)

When using [bound mode]({%slug treemap-data-binding%}), once the **RadTreeMap** is populated with data, it is possible to add a new **GroupDescriptor** to the **GroupDescriptors** collection:

>caption RadTreeMap with no grouping

![WinForms RadTreeMap with no grouping](images/winforms-treemap-grouping002.png)

>caption RadTreeMap grouped by CategoryID 

![WinForms RadTreeMap grouped by CategoryID](images/winforms-treemap-grouping003.png)

<snippet id='treemap-treemapgettingstarted-grouping-cs' />
<snippet id='treemap-treemapgettingstarted-grouping-vb' />



# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Colorizers]({%slug treemap-colorizers%})

