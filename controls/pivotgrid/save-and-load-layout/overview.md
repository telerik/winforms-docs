---
title: Overview
page_title: Overview - RadPivotGrid
description: Overview
slug: winforms/pivotgrid/save-load-layout/overview
tags: save,and,load,layout
published: True
position: 0
previous_url: pivotgrid-save-and-load-layout
---

# Save and Load Layout

__RadPivotGrid__ supports save and load layout functionality, which gives your applications the opportunity to preserve user  __RadPivotGrid__ settings such as group descriptors and restore them later. Those layout settings are written in a xml file.

Here is a sample demonstrating how you can implement a Save Layout button event handler.

#### SaveLayout

<snippet id='pivotgrid-pivotgridsaveloadlayout-savelayout-cs' />
<snippet id='pivotgrid-pivotgridsaveloadlayout-savelayout-vb' />



The code snippet below demonstrates how you can implement a Load Layout button event handler. 

#### LoadLayout

<snippet id='pivotgrid-pivotgridsaveloadlayout-loadlayout-cs' />
<snippet id='pivotgrid-pivotgridsaveloadlayout-loadlayout-vb' />



>important This API should be used only if the data binding has been performed via the __DataSource__ property or using a __LocalSourceDataProvider__. The API also does not export custom aggregate functions. 
For SAAS cubes and custom aggregation serialization please refer to:
* [Serialize AdomdDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider%})
* [Serialize XmlaDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})
* [Serialize Custom Aggregates]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})


# See Also

* [Serialize AdomdDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-adomddataprovider%})
* [Serialize XmlaDataProvider]({%slug winforms/pivotgrid/save-and-load-layout/serialize-xmladataprovider%})
