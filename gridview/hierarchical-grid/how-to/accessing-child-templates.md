---
title: Accessing Child Templates
page_title: Accessing Child Templates | UI for WinForms Documentation
description: Accessing Child Templates
slug: winforms/gridview/hierarchical-grid/how-to/accessing-child-templates
tags: accessing,child,templates
published: True
position: 0
---

# Accessing Child Templates



## 

You can programmatically access your child templates using __RadGridView.MasterGridViewTemplate.ChildGridViewTemplates__ templates collection. For example to modify __AutoSizeColumnsMode__ to __Fill__ in the first child template use the following code:

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=AccessingChildTemplates}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=AccessingChildTemplates}} 

#### Accessing child templates 

````C#
this.radGridView1.MasterTemplate.Templates[0].AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;

````
````VB.NET
Me.RadGridView1.MasterTemplate.Templates(0).AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill

````

{{endregion}} 



