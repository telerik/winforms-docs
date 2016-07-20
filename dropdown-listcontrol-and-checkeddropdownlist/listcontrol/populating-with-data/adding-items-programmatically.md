---
title: Adding Items Programmatically
page_title: Adding Items Programmatically | RadListControl
description: RadListControl supports adding items at run time, which means that you can manually populate it with data.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/adding-items-programmatically
tags: adding,items,programmatically
published: True
position: 1
---

# Adding items programmatically

__RadListControl__ supports adding items at run time, which means that you can manually populate it with data. The following example demonstrates how to add two different items to the RadListControl.__Items__  collection. 

You can use one of the following item types: 

* __RadListDataItem__ – it represents a logical data item which can display specific text and image.             
              

* __DescriptionTextListDataItem__ – similar to the __RadListDataItem__. In addition, it displays some description below the item’s text.


>caption Figure 1: Sample RadListDataItem and DescriptionTextListDataItem

![dropdown-and-listcontrol-listcontrol-populating-with-data-adding-items-programmatically 001](images/dropdown-and-listcontrol-listcontrol-populating-with-data-adding-items-programmatically001.png)

#### Add items programmatically 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=AddItemsProgrammatically}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=AddItemsProgrammatically}} 

````C#
            
DescriptionTextListDataItem descriptionItem = new DescriptionTextListDataItem();
descriptionItem.Text = "Chicken wings";
descriptionItem.Image = Properties.Resources.chicken_wings;
descriptionItem.DescriptionText = "some description";
this.radListControl1.Items.Add(descriptionItem);
            
RadListDataItem dataItem = new RadListDataItem();
dataItem.Text = "Chicken toast";
dataItem.Image = Properties.Resources.chicken_toast;
this.radListControl1.Items.Add(dataItem);

````
````VB.NET
Dim descriptionItem As New DescriptionTextListDataItem()
descriptionItem.Text = "Chicken wings"
descriptionItem.Image = My.Resources.chicken_wings
descriptionItem.DescriptionText = "some description"
Me.radListControl1.Items.Add(descriptionItem)
Dim dataItem As New RadListDataItem()
dataItem.Text = "Chicken toast"
dataItem.Image = My.Resources.chicken_toast
Me.radListControl1.Items.Add(dataItem)

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/design-time%})
* [Data Binding]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/data-binding%})

