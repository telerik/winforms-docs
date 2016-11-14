---
title: Accessing Child Templates
page_title: Accessing Child Templates | RadGridView
description: This article shows how you can access the Child Templates of RadGridView.
slug: winforms/gridview/hierarchical-grid/how-to/accessing-child-templates
tags: accessing,child,templates
published: True
position: 0
previous_url: gridview-hirarchical-grid-how-to-accessing-child-templates
---

# Accessing Child Templates
You can programmatically access your child templates using __MasterTemplate.Templates__ collection. For example, use the following code to set the __AutoSizeColumnsMode__ to *Fill* in the first child template :

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=AccessingChildTemplates}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=AccessingChildTemplates}} 

````C#
this.radGridView1.MasterTemplate.Templates[0].AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;

````
````VB.NET
Me.RadGridView1.MasterTemplate.Templates(0).AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill

````

{{endregion}} 



# See Also
* [Applying formatting only to cells in a child template]({[%slug winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template%]}

* [Expanding all rows]({[%slug winforms/gridview/hierarchical-grid/how-to/expanding-all-rows%]}

* [Iterating the child rows collection of a chosen parent row in hierarchy RadGridView]({[%slug winforms/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview%]}

* [Resizing child GridViewInfo]({[%slug winforms/gridview/hierarchical-grid/how-to/resizing-child-gridviewinfo%]}

