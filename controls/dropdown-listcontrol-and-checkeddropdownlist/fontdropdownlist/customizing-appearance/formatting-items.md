---
title: Formatting Items
page_title: Formatting Items - RadFontDropDownList
description: RadFontDropDownList represents a drop down list with built-in fonts that are installed on the system.
slug: winforms/editors/fontdropdownlist/accessing-and-customizing-elements/formatting-items
tags: customization
published: True
position: 1 
---

# Formatting Items
 
Since **RadFontDropDownList** internally uses a **RadListView** in *DetailsView*, it is possible to customize each cell element, using the [CellFormatting]({%slug winforms/listview/formatting-items%}) event.

You can access the hosted **RadListView** control by the RadFontDropDownList.**FontListView** property and subscribe to its **CellFormatting** event in order to customize cell elements:

![WinForms RadFontDropDownList Formatting Items](images/editors-fontdropdownlist-formatting-items001.png)

#### Formatting the cell elements

<snippet id='fontdropdownlist-formatting-items-itemsformatting-cs' />
<snippet id='fontdropdownlist-formatting-items-itemsformatting-vb' />

 
