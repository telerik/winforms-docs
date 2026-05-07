---
title: Custom Items
page_title: Custom Items - WinForms DropDownList Control
description: Learn how to build custom items in WinForms DropDownList.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/custom-items
tags: custom,items
published: True
position: 8
previous_url: dropdown-and-listcontrol-dropdownlist-customizing-items
---

# Custom Items
 
By default, __RadDropDownList__ displays text and image in its drop-down items. However, the default layout might not be suitable for you, and in this case you can use the flexible mechanism it features for creating visual items with custom content elements, functionality and properties.

This article demonstrates how to display detailed information for each employee from the Northwind.__Employees__ table which is used as data source.

>caption Figure 1: Custom visual items

![WinForms RadDropDownList Custom Visual Items](images/dropdown-and-listcontrol-dropdownlist-customizing-items003.png)

1\. Create a class that inherits from __RadListVisualItem__. Override its __CreateChildElements__ method where you can add the desired content elements. The custom item will have no styles, because there are no defined styles for its type in the themes. You can apply the __RadListVisualItem__’s styles to it by defining its __ThemeEffectiveType__.

2\. Override the __Synchronize__ method in order to match the displayed data in the content elements with the respective __DataBoundItem__. As the *“Photo”* column in the Northwind.__Employees__ table contains a byte array, we should convert it to *Image*:

#### Custom RadListVisualItem 

<snippet id='dropdownlist-custom-items-customvisualitem-cs' />
<snippet id='dropdownlist-custom-items-customvisualitem-vb' />



3\. Subscribe to the __CreatingVisualListItem__ event before populating the __RadDropDownList__ with data and replace the default item with your custom one:

#### Custom RadListVisualItem 

<snippet id='dropdownlist-custom-items-replaceitem-cs' />
<snippet id='dropdownlist-custom-items-replaceitem-vb' />



4\. The last thing we need to do is to set the RadDropDownList.__AutoSizeItems__ property to *false* and specify the __ItemHeight__:

#### Custom RadListVisualItem 

<snippet id='dropdownlist-custom-items-adjustheight-cs' />
<snippet id='dropdownlist-custom-items-adjustheight-vb' />



