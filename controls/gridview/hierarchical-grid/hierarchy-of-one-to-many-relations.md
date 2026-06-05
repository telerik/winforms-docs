---
title: Hierarchy of one to many relations
page_title: Hierarchy of one to many relations - WinForms GridView Control
description: Bind WinForms GridView to a hierarchy containing one to many relations.
slug: winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations
tags: hierarchy,of,one,to,many,relations
published: True
position: 6
previous_url: gridview-hirarchical-grid-hierarchy-of-one-to-many-relations
---

# Hierarchy of one to Many Relations

__RadGridView__ supports binding to a hierarchy containing one to many relations. The result is presented in tabs inside child views.

![WinForms RadGridView Hierarchy of one to Many Relations](images/grid-hierarchical-grid-hierarchy-of-one-to-many-relations001.png)

Follow these steps to setup the hierarchy:

1. Bind to a data source (e.g. DataTable)

2. Add at least two child templates and set their data source.

3. Add relations to connect the child templates with the master template.

4. Run the project.

<snippet id='gridview-hierarchyofonetomanyrelation-hierarchyofonetomanyrelation-cs' />
<snippet id='gridview-hierarchyofonetomanyrelation-hierarchyofonetomanyrelation-vb' />

>note There is an example demonstrating how to build hierarchy containing one-to-many relations in the demo application.
>


## Formatting Tabs

In some cases you may want to set custom text to the tabs of the child views different than the text of the template's caption. In this case, the solution is to use the [Formatting events]({%slug winforms/gridview/cells/formatting-cells%}) that RadGridView exposes, and more specifically, the __ViewCellFormatting__ event. This event will give you access to the detail cell that contains the whole `RadPageViewElement` and from this element you will be able to set the text of each tab separately. For example, if we need to display the count of the rows in each view, we can use the following code snippet in order to apply our custom text:

<snippet id='gridview-hierarchyofonetomanyrelation-formattingtabs-cs' />
<snippet id='gridview-hierarchyofonetomanyrelation-formattingtabs-vb' />

The result is shown on the image below:

![WinForms RadGridView Formatting Tabs](images/gridview-hirarchical-grid-hierarchy-of-one-to-many-relations002.png)

>note The ChildViewTabsPosition property gets or sets the position to place tabs for child views related with this template.
>


## Page View Modes

We can use the __RadGridView.TableElement.PageViewMode__ property to change how the tabs are visualised in the child table.

#### __Strip View Mode__
![WinForms RadGridView Strip View Mode](images/gridview-hirarchical-grid-hierarchy-of-one-to-many-relations003.png)

#### __Stack View Mode__
![WinForms RadGridView Stack View Mode](images/gridview-hirarchical-grid-hierarchy-of-one-to-many-relations004.png)

#### __Outlook View Mode__
![WinForms RadGridView Outlook View Mode](images/gridview-hirarchical-grid-hierarchy-of-one-to-many-relations005.png)

#### __Explorer Bar View Mode__
![WinForms RadGridView Explorer Bar View Mode](images/gridview-hirarchical-grid-hierarchy-of-one-to-many-relations006.png)

## See Also
* [Binding to Hierarchical Data Automatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%})

* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Object Relational Hierarchy Mode]({%slug winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode%})

* [Self-Referencing Hierarchy]({%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy%})

* [Tutorial Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%})

