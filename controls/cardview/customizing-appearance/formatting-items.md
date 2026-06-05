---
title: Formatting Items
page_title: Formatting Items - UI for WinForms Documentation
description: Items appearance in RadCardView can be customized by making use of the CardViewItemFormatting event.
slug: winforms/cardviewview/customizing-appearance/formatting-items
tags: formatting,items
published: True
position: 0
---

# Formatting Items

Items appearance in __RadCardView__ can be customized by making use of the __CardViewItemFormatting__ event. The following example, demonstrates how you can change the color of an item which is being selected.

>note By using this event to customize the items appearance, you should always provide an else clause,  where you reset the appearance settings which you have introduced. This is necessary since __RadCardView__ uses data virtualization, which might lead to unpredicted appearance results when items are being reused.

## Formatting the Visual Item

The appearance of the visual items can be fully customized by handling the __CardViewItemFormatting__ event. 

>caption Figure 1: Formatting the Visual Item
![WinForms RadCardView Formatting the Visual Item](images/cardview-customizing-appearance-formatting-items001.png)

#### Formatting the Visual Item

<snippet id='cardview-customizing-appearance-formatting-items-cardviewvisualitemformatting-cs'/>
<snippet id='cardview-customizing-appearance-formatting-items-cardviewvisualitemformatting-vb'/>



## Formatting CardViewItiem

By handling the __CardViewItemFormatting__ event each of the individual card view items can be customized as well.

>caption Figure 2: Formatting CardViewItiem
![WinForms RadCardView Formatting CardViewItiem](images/cardview-customizing-appearance-formatting-items002.png)

#### Formatting CardViewItiem

<snippet id='cardview-customizing-appearance-formatting-items-cardviewitemformatting-cs'/>
<snippet id='cardview-customizing-appearance-formatting-items-cardviewitemformatting-vb'/>



## See Also

[Getting Started]({%slug winforms/cardview/getting-started%})
[Structure]({%slug winforms/cardview/structure%})
[Visual Data Representation]({%slug winforms/cardviewview/customizing-appearance/visual-data-representation%})
[Custom Items]({%slug winforms/cardview/custom-items%})
