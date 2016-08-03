---
title: Adding Items Programmatically
page_title: Adding Items Programmatically | RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically
tags: checkeddropdownlist
published: True
position: 1 
---

# Adding items programmatically

__RadCheckedDropDownList__ supports adding items at run time, which means that you can manually populate it with data. The following example demonstrates how to add two different items to the RadCheckedDropDownList.__Items__  collection. 

## 

You can use one of the following item types: 

* __RadCheckedListDataItem__ – it represents a logical data item which can display specific text, image and checkbox.             
              

* __DescriptionTextCheckedListDataItem__ – similar to the __RadCheckedListDataItem__. In addition, it displays some description below the item’s text.


>caption Figure 1: Sample RadCheckedListDataItem and DescriptionTextCheckedListDataItem

![dropdown-and-listcontrol-checkeddropdownlist-adding-items-programmatically 001](images/dropdown-and-listcontrol-checkeddropdownlist-adding-items-programmatically001.png)

#### Add items programmatically 

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\CheckedDropDownList1.cs region=AddItemsProgrammatically}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\CheckedDropDownList1.vb region=AddItemsProgrammatically}} 

````C#
RadCheckedListDataItem dataItem = new RadCheckedListDataItem();
dataItem.Text = "Chicken toast";
radCheckedDropDownList1.Items.Add(dataItem);

DescriptionTextCheckedListDataItem descriptionItem = new DescriptionTextCheckedListDataItem();
descriptionItem.Text = "Chicken wings";
descriptionItem.Checked = true;
descriptionItem.DescriptionText = "some description";
radCheckedDropDownList1.Items.Add(descriptionItem);
         
````
````VB.NET
Dim dataItem As New RadCheckedListDataItem()
dataItem.Text = "Chicken toast"
radCheckedDropDownList1.Items.Add(dataItem)

Dim descriptionItem As New DescriptionTextCheckedListDataItem()
descriptionItem.Text = "Chicken wings"
descriptionItem.Checked = True
descriptionItem.DescriptionText = "some description"
radCheckedDropDownList1.Items.Add(descriptionItem)

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/design-time%})
* [Data Binding]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/data-binding%})

