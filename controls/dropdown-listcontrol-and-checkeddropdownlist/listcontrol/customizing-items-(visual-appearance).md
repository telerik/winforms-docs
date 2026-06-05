---
title: Customizing Items
page_title: Customizing Items - RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance)
tags: customizing,items,(visual,appearance)
published: True
position: 9
previous_url: dropdown-and-listcontrol-listcontrol-customizing-items-(visual-appearance)
---

# Customizing Items

You can use the __ItemDataBound__ event to change item content based on the data that is bound to each item. The __ListItemDataBoundEventArgs__ include properties for the native __DataBoundItem__ (a DataRowView object, which provides access to the entire row being bound) and the data item of __RadListControl__. In the example below the __DisplayName__ property is set to *"FirstName"*. Two other columns, *"FirstName"* and *"TitleOfCourtesy"*, are pre-pended to the data list item.

With the introduction of the [HTML-like text rendering feature]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}), Telerik Presentation Framework increased the level of the available customizations that you can apply. That said, you are able to use this feature to indicate different roles of different parts of the __Text__ property value.

The aim of this article is to demonstrate how you can achieve to look shown below. As you can see we have three different parts of the text: *TitleOfCourtesy*, *FullName*(*FirstName* + *LastName*) and *Title*. For the purposes of the example, we are going to add an image as well.

>caption Figure 1: Customizing Items

![WinForms RadListControl Customizing Items](images/dropdown-and-listcontrol-listcontrol-customizing-items-visual-appearance001.png)

1\. Handle the __ItemDataBound__ event to fill the data list items with custom data. 

#### Handling the ItemDataBound event 

<snippet id='listcontrol-customizing-items-visual-appearance-itemdatabound-cs' />
<snippet id='listcontrol-customizing-items-visual-appearance-itemdatabound-vb' />




#### Image helper method 

<snippet id='listcontrol-customizing-items-visual-appearance-getimagedata-cs' />
<snippet id='listcontrol-customizing-items-visual-appearance-getimagedata-vb' />



2\. Since the *&lt; br &gt;* tag will split the __Text__ value in different lines, it is essential to set the __AutoSizeItems__ of RadListControl to *true*:
        	
#### Setting AutoSizeItems 

<snippet id='listcontrol-customizing-items-visual-appearance-autosizeitems-cs' />
<snippet id='listcontrol-customizing-items-visual-appearance-autosizeitems-vb' />



 

3\. Should you want to have apply some padding to the visual items, you should do it on CreatingVisualListItem event: 

#### Applying Padding to the visual list items 

<snippet id='listcontrol-customizing-items-visual-appearance-creatingvisuallistitem-cs' />
<snippet id='listcontrol-customizing-items-visual-appearance-creatingvisuallistitem-vb' />



# See Also

* [How to Create Custom Items with Conditional Elements in RadListControl]({%slug create-custom-items-with-conditional-elements-in-radlistcontrol%})



