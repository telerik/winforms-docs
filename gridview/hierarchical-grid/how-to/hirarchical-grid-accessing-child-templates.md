---
title: Accessing Child Templates
page_title: Accessing Child Templates
description: Accessing Child Templates
slug: gridview-hirarchical-grid-how-to-accessing-child-templates
tags: accessing,child,templates
published: True
position: 0
---

# Accessing Child Templates



## 

You can programmatically access your child templates using __RadGridView.MasterGridViewTemplate.ChildGridViewTemplates__templates collection. For example to modify __AutoSizeColumnsMode__to __Fill__ in the first child template use the following code:

#### __[C#] Accessing child templates__

{{region AccessingChildTemplates}}
	            this.radGridView1.MasterTemplate.Templates[0].AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
	{{endregion}}



#### __[VB.NET] Accessing child templates__

{{region AccessingChildTemplates}}
	        Me.RadGridView1.MasterTemplate.Templates(0).AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill
	{{endregion}}


