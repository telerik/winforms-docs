---
title: Filtering
page_title: Filtering | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering
tags: listcontrol, filtering
published: True
position: 1  
---

# Filtering

__RadListControl__ can filter which items to be currently visible by using the __Filter__ or __FilterExpression__ properties. 

## Filtering predicate

The __Filter__ property accepts a predicate method that can be used for arbitrary filtering conditions. The __FilterExpession__ property accepts a string following a special syntax that describes which items should be visible. The __Filter__ property is used like this:

#### Filtering method body 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=filteringMethod}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=filteringMethod}} 

````C#
    
private bool FilterMethod(RadListDataItem itemToFilter)
{
    return itemToFilter.Text.EndsWith("SomeString");
}

````
````VB.NET
Private Function FilterMethod(ByVal itemToFilter As RadListDataItem) As Boolean
    Return itemToFilter.Text.EndsWith("SomeString")
End Function

````

{{endregion}} 


#### Setting the Filter property 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=filtering}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=filtering}} 

````C#
            
radListControl1.Filter = FilterMethod;

````
````VB.NET
radListControl1.Filter = AddressOf FilterMethod

````

{{endregion}} 
 
Setting the __Filter__ property will start a filtering operation which will call the __FilterMethod__ for every item in __RadListControl__ to determine if the item should be visible or not. After filtering, __RadListControl__ will contain the same number of items as before or less. Setting the __Filter__ property to *null* resets any filtering and all items will be visible. 

>caution Filtering may change the __SelectedIndex__ property depending on whether the currently selected item is still visible.
        
## FilterExpression

Another option to filter the items is to specify the FilterExpression property.

#### Setting the FilterExpression property 

{{source=..\SamplesCS\DropDownListControl\ListControl\ListControl1.cs region=expression}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\ListControl1.vb region=expression}} 

````C#
this.radListControl1.FilterExpression = "Country LIKE 'Argentina'";            

````
````VB.NET 
Me.radListControl1.FilterExpression = "Country LIKE 'Argentina'"
````

{{endregion}} 