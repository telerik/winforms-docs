---
title: Structure
page_title: Structure - WinForms TreeMap Control
description: Get familiar with the internal structure of the WinForms TreeMapcontrol.  
slug: treemap-structure
tags: treemap, structure
published: True
position: 1 
---

# Structure

This article describes the inner structure and organization of the elements which build **RadTreeMap**.

![treemap-structure 001](images/treemap-structure001.png)

* **TreeMapDataItem** - represents the colored piece of RadTreeMap which size depends on the value it stores.

* **TreeMapDataItemGroup** - represents the group that holds the items.

* **TreeMapLegendElement** - represents the legend in RadTreeMap.

	* **LegendTitleElement** - represents the title of the legend.
	* **LegendItemElement** - represents the item's legend element.
		* **LegendItemTitle** - item's title.
		* **LegendItemMarker** - item's marker.

RadTreeMap doesn't use visual elements for its items. It directly paints the data items considering the values and the layout [algorithm]({%slug treemap-layout-strategies%}).

## Elements Hierarchy

![treemap-structure 002](images/treemap-structure002.png)

 
# See Also

* [Data Binding]({%slug treemap-data-binding%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Layout Strategies]({%slug treemap-layout-strategies%})

