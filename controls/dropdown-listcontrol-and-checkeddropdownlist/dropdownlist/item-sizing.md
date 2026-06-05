---
title: Item Sizing
page_title: Item Sizing - WinForms DropDownList Control
description: Learn how to size the items in WinForms DropDownList.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing
tags: item,sizing
published: True
position: 12
previous_url: dropdown-and-listcontrol-dropdownlist-item-sizing
---

# Item Sizing
 
## ItemHeight

By default, all items in __RadDropDownList__ have equal height, *18px*. You can set the ListElement.__ItemHeight__  property in order to specify the desired height for all items.

>caption Figure 1: ItemHeight

![WinForms RadDropDownList ItemHeight](images/dropdown-and-listcontrol-dropdownlist-item-sizing001.png)

#### ItemHeight 

<snippet id='dropdownlist-item-sizing-itemheight-cs' />
<snippet id='dropdownlist-item-sizing-itemheight-vb' />



 

## AutoSizeItems

The RadDropDownList.__AutoSizeItems__ property indicates whether items will be sized according to their content.       
      
>caption Figure 2: AutoSizeItems

![WinForms RadDropDownList AutoSizeItems](images/dropdown-and-listcontrol-dropdownlist-item-sizing002.png)

#### AutoSizeItems 

<snippet id='dropdownlist-item-sizing-autosizeitems-cs' />
<snippet id='dropdownlist-item-sizing-autosizeitems-vb' />



 
If this property is set to *false* the user can set the __Height__ property of each individual __RadListDataItem__ in the __Items__ collection in order to override the automatic sizing.
        
>caption Figure 3: Custom height for each item

![WinForms RadDropDownList Custom Height for Each Item](images/dropdown-and-listcontrol-dropdownlist-item-sizing003.gif)

#### Height 

<snippet id='dropdownlist-item-sizing-height-cs' />
<snippet id='dropdownlist-item-sizing-height-vb' />



 
## Sizing auto-complete pop-up items

When the RadDropDownList.__AutoCompleteMode__ property is set to *Suggest* or *SuggestAppend* you can customize the height of the auto-complete items by setting the DropDownListElement.AutoCompleteSuggest.DropDownList.ListElement.__ItemHeight__ property:
        
>caption Figure 4: AutoCompleteSuggest.DropDownList.ListElement.ItemHeight

![WinForms RadDropDownList AutoCompleteSuggest DropDownList ListElement ItemHeight](images/dropdown-and-listcontrol-dropdownlist-item-sizing004.png)

#### Auto-complete items height 

<snippet id='dropdownlist-item-sizing-autocompleteitemsheight-cs' />
<snippet id='dropdownlist-item-sizing-autocompleteitemsheight-vb' />





