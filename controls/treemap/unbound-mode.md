---
title: Unbound Mode
page_title: Unbound Mode - WinForms TreeMap Control
description: Add items/groups to the WinForms TreeMap.   
slug: treemap-unbound-mode
tags: treemap, unbound
published: True
position: 6
---

# Unbound Mode

**RadTreeMap** allows adding items/groups either at design time or at run time.

### Populating with Data at Design Time

Select RadTreeMap and click the small arrow on the top right position in order to open the Smart Tag.

![WinForms RadTreeMap SmartTag](images/treemap-design-time001.png)

In the **RadTreeMap Specific Actions** section, there are options for adding items/groups:

* Edit Items - opens the *TreeMapDataItem Collection Editor* which allows adding tree map items at design time. Specify the **Text** and **Value** for each item. 

![WinForms RadTreeMap TreeMapDataItem Collection Editor](images/treemap-design-time002.png)

![WinForms RadTreeMap Edit Items](images/treemap-unbound-mode001.png)
	
* Edit Groups - opens the *TreeMapDataItemGroup Collection Editor* allows adding tree map groups at design time. 

![WinForms RadTreeMap TreeMapDataItemGroup Collection Editor](images/treemap-design-time003.png)

Then, you can click the *Edit Items* option and specify the **Group** for each added item:

![WinForms RadTreeMap Edit Items Option](images/treemap-unbound-mode002.png)

![WinForms RadTreeMap Specify Group](images/treemap-unbound-mode003.png)

### Populating with Data at Run Time
 
<snippet id='treemap-treemapgettingstarted-unboundmode-cs' />
<snippet id='treemap-treemapgettingstarted-unboundmode-vb' />



![WinForms RadTreeMap Unbound Mode Result](images/treemap-unbound-mode004.png)
 
# See Also

* [Structure]({%slug treemap-structure%}) 

* [Layout Strategies]({%slug treemap-layout-strategies%})

* [Getting Started]({%slug winforms-treemap-getting-started%})

* [Data Binding]({%slug treemap-data-binding%})


