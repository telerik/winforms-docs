---
title: Filtering
page_title: Filtering - RadListControl
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

<snippet id='listcontrol-filtering-filteringmethod-cs' />
<snippet id='listcontrol-filtering-filteringmethod-vb' />




#### Setting the Filter property 

<snippet id='listcontrol-filtering-filtering-cs' />
<snippet id='listcontrol-filtering-filtering-vb' />



 
Setting the __Filter__ property will start a filtering operation which will call the __FilterMethod__ for every item in __RadListControl__ to determine if the item should be visible or not. After filtering, __RadListControl__ will contain the same number of items as before or less. Setting the __Filter__ property to *null* resets any filtering and all items will be visible. 

>caution Filtering may change the __SelectedIndex__ property depending on whether the currently selected item is still visible.
        
## FilterExpression

Another option to filter the items is to specify the FilterExpression property.

#### Setting the FilterExpression property 

<snippet id='listcontrol-filtering-expression-cs' />
<snippet id='listcontrol-filtering-expression-vb' />



>note The __RadListControl.FilterExpression__ property value resembles a SQL expression.
