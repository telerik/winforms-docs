---
title: Accessing Child Templates
page_title: Accessing Child Templates | UI for WinForms Documentation
description: Accessing Child Templates
slug: winforms/gridview/hierarchical-grid/how-to/accessing-child-templates
tags: accessing,child,templates
published: True
position: 0
previous_url: gridview-hirarchical-grid-how-to-accessing-child-templates
---

# Accessing Child Templates
You can programmatically access your child templates using __RadGridView.MasterTemplate.Templates__ collection. For example, use the following code to set the __AutoSizeColumnsMode__ to *Fill* in the first child template :

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=AccessingChildTemplates}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=AccessingChildTemplates}} 

````C#
this.radGridView1.MasterTemplate.Templates[0].AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;

````
````VB.NET
Me.RadGridView1.MasterTemplate.Templates(0).AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill

````

{{endregion}} 



