---
title: Printing Hierarchical Grid
page_title: Printing Hierarchical Grid - RadGridView
description: RadgridView can print a hierarchical grid and this article shows how you can achieve this.
slug: winforms/gridview/printing-support/printing-hierarchical-grid
tags: printing,hierarchical,grid
published: True
position: 3
previous_url: gridview-printing-support-printing-hierarchical-grid
---

# Printing Hierarchical Grid

When bound to hierarchical data __RadGridView__ can print its contents preserving the original hierarchical structure. This article will explain in details what settings need to be configured and how they should be applied. For the purpose of this example we will generate our [hierarchy binding to the Northwind sample database]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%}). Here is how the resulting grid, looks when printed.

>caption Figure 1: Printing Hierarchical Grid

[WinForms RadGridView Printing Hierarchical Grid](images/gridview-printing-support-printing-hierarchical-grid001.png)

#### Printing Settings

{{source=..\SamplesCS\GridView\Printing support\PrintingHierarchicalGrid.cs region=PrintingSettings}} 
{{source=..\SamplesVB\GridView\Printing support\PrintingHierarchicalGrid.vb region=PrintingSettings}} 

````C#
GridPrintStyle style = new GridPrintStyle();
style.PrintHierarchy = true;
style.HierarchyIndent = 20;
style.ChildViewPrintMode = ChildViewPrintMode.SelectViewToPrint;
this.radGridView1.PrintStyle = style;

````
````VB.NET
Dim style As New GridPrintStyle()
style.PrintHierarchy = True
style.HierarchyIndent = 20
style.ChildViewPrintMode = ChildViewPrintMode.SelectViewToPrint
Me.RadGridView1.PrintStyle = style

````

{{endregion}} 

## GridPrintSyle Properties

The following properties of the __GridPrintSyle__ class are responsible for defining the settings of a hierarchical __RadGridView__ while it is being printed.

* __PrintHierarchy:__ Indicates whether the hierarchy will be printed or not.

* __HierarchyIndent:__ Defines indent in pixels for the different levels of the hierarchy.

## ChildViewPrintMode Enumeration

Determines how child views are being printed when the grid is in hierarchy.

* __PrintFirstView:__ Always prints the first view.

* __PrintCurrentlyActiveView:__ Prints the view that is active in the grid.

* __ChildViewPrintMode:__ This mode raises the __ChildViewPrinting__ event.

## Events

__ChildViewPrinting:__ The event allows to choose the view to print on a row by row basis. It is raised for hierarchy rows with more than one child view. The event arguments provide:

* __ActiveViewIndex:__ Returns the index of the view to be printed.

* __Row:__ Gives access to the current __GridViewHierarchyRowInfo__.
            
# See Also
* [Events and Customization]({%slug winforms/gridview/printing-support/events-and-customization%})

* [GridPrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%})

* [Overview]({%slug winforms/gridview/printing-support%})

