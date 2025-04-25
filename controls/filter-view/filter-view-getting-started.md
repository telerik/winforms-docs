---
title: Getting Started
page_title: Getting Started - Filter View
description: Leanr how to get started with the WinForms FilterView control.  
slug: filter-view-getting-started
tags: filter, view
published: True
position: 2  
---

# Getting Started with WinForms FilterView

This article shows how you can start using **RadFilterView**.

## Adding Telerik Assemblies Using NuGet

To use `RadFilterView` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadFilterView

This article shows how you can start using **RadFilterView** and using it for filtering a **RadGridView** control.

1. Drag a **RadFilterView** from the toolbox and drop it onto the form.

2. Drag a **RadGridView** from the toolbox and drop it onto the form.

3. Set the **DataSource** property of RadGridView, e.g. use the Northwind.Products table, to populate it with data. 

	![WinForms RadFilterView RadGridView DataSource](images/filter-view-getting-started002.png)

4. Enable the filtering functionality in RadGridView, set the **EnableFiltering** property to true.

	![WinForms RadFilterView Enable Grid Filter](images/filter-view-getting-started003.png)

5. Set the **AssociatedControl** of **RadFilterView** to be the grid.

	![WinForms RadFilterView AssociatedControl](images/filter-view-getting-started004.png)

That's it. You can now filter the grid by using the automatically generated categories in **RadFilterView**. 

![WinForms RadFilterView Getting Started](images/filter-view-getting-started001.gif)

Steps 3-5 can also be performed programmatically:

{{source=..\SamplesCS\FilterView\FilterViewGettingStarted.cs region=GettingStarted}} 
{{source=..\SamplesVB\FilterView\FilterViewGettingStarted.vb region=GettingStarted}} 

````C#

this.radGridView1.DataSource = this.productsBindingSource;
this.radGridView1.EnableFiltering = true;
this.radFilterView1.AssociatedControl = this.radGridView1;

````
````VB.NET
Me.RadGridView1.DataSource = Me.ProductsBindingSource
Me.RadGridView1.EnableFiltering = True
Me.RadFilterView1.AssociatedControl = Me.RadGridView1

````

{{endregion}}  

 
# See Also

* [Design Time]({%slug filter-view-design-time%})
* [Structure]({%slug filter-view-structure%})
 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms FilterView Component](https://www.telerik.com/products/winforms/filterview.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

