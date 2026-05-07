---
title: Unbound Mode
page_title: Unbound Mode - RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/unbound-mode
tags: programmatically,populating,with,data
published: True
position: 0
previous_url: listview-programatically-populating-with-data
---

# Unbound Mode

When in unbound mode, **RadListView** doesn't use a data source to generate its content. In this mode, you need to add items either at design time, or at run time.

## Adding Items at Design Time

Adding items to **RadListView** at design time is possible through the **Items** collection of the control. This collection is accessible by using the **Smart Tag** or the **Items** collection property in the property grid. Further information is available in the [Adding Items]({%slug winforms/listview/working-with-design-time/adding-items%}) help article.

## Adding Items at Run Time

The items in **RadListView** are stored in a collection that is accessible through the __Items__ property. Items can be added to **RadListView** using one of the overloads of the __Add__ method.

#### Adding items

<snippet id='listview-listviewprogramaticallypopulatingwithdata-additems-cs' />
<snippet id='listview-listviewprogramaticallypopulatingwithdata-additems-vb' />



## Adding Columns

When in [DetailsView]({%slug winforms/listview/views%}), **RadListView** displays columns. The columns are stored in a collection that is accessible through the __Columns__ property. Columns can be added to **RadListView** using one of the three overloads of the __Add__ method as it is shown below. Each column must have a unique name because columns are distinguished by their __Name__ property. 

#### Adding columns

<snippet id='listview-listviewprogramaticallypopulatingwithdata-addcolumns-cs' />
<snippet id='listview-listviewprogramaticallypopulatingwithdata-addcolumns-vb' />



You can set cell values to the items of **RadListView** using their indexers. The keys can be either the index of the column, the name of the column, or the column itself.

#### Populating cells

<snippet id='listview-listviewprogramaticallypopulatingwithdata-populatecells-cs' />
<snippet id='listview-listviewprogramaticallypopulatingwithdata-populatecells-vb' />



>important To use these indexers, the item must have a valid owner e.g. it first has to be added to the __Items__ collection of **RadListView**.
 
It is possible to add columns at design time as well by either using the **Smart Tag** or the **Columns** collection in the *Properties* section in Visual Studio. Further information is available in the [Adding Columns]({%slug winforms/listview/working-with-design-time/adding-columns%})  help article.		
 
## Adding Groups

Aside from using __GroupDescriptors__, custom groups can also be added to **RadListView**. This is done by using the __Add__ method of the __Groups__ collection of **RadListView**.

#### Adding groups

<snippet id='listview-listviewprogramaticallypopulatingwithdata-addgroups-cs' />
<snippet id='listview-listviewprogramaticallypopulatingwithdata-addgroups-vb' />



In order to assign an item to a group, you should set the item’s __Group__ property:

#### Assign item to a group

<snippet id='listview-listviewprogramaticallypopulatingwithdata-assignitemtoagroup-cs' />
<snippet id='listview-listviewprogramaticallypopulatingwithdata-assignitemtoagroup-vb' />



In order to enable this kind of grouping the __EnableCustomGrouping__ property needs to be set to *true*. In order to display the groups, the __ShowGroups__ property needs to be set to *true*.		

You can check which items belong to a given group by iterating trough the __Items__ collection of a __ListViewDataItemGroup__.

It is possible to add groups at design time as well by either using the **Smart Tag** or the **Groups** collection in the *Properties* section in Visual Studio. Further information is available in the [Adding Groups]({%slug winforms/listview/working-with-design-time/adding-groups%}) help article.

# See Also

* [Data Binding]({%slug winforms/listview/data-binding%})	
* [Adding Groups]({%slug winforms/listview/working-with-design-time/adding-groups%})	
* [Adding Columns]({%slug winforms/listview/working-with-design-time/adding-columns%})
* [Selection]({%slug winforms/listview/features/selection%})	 
		
