---
title: Structure
page_title: Structure | RadFontDropDownList
description: RadFontDropDownList represents a drop down list with built-in fonts that are installed on the system.   
slug: winforms/editors/fontdropdownlist/structure
tags: font, dropdown, structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadFontDropDownList** control. 

**RadFontDropDownList** internally uses a grouped **RadListViewElement** with default **ViewType** set to *DetailsView*. Two columns are displayed in the pop up list - while the first column stores the font name, the second column shows a preview of the respective font.
        
>caption Figure 1: RadFontDropDownList's elements hierarchy

![editors-fontdropdownlist-structure 001](images/editors-fontdropdownlist-structure001.png)
![editors-fontdropdownlist-structure 003](images/editors-fontdropdownlist-structure003.png)

>caption Figure 2: RadFontDropDownList's structure

![editors-fontdropdownlist-structure 002](images/editors-fontdropdownlist-structure002.png)

1. **RadPopupContainerForm** - represents the pop up container that hosts the **RadListViewElement**.
2. **DetailListViewGroupVisualItem** - represents a visual element for the group item (e.g. *Recently Used Fonts* and *All Fonts* items).  
3. **DetailListViewVisualItem** - represents a visual item illustrating a font option in the pop up.
4. **RadDropDownListEditableAreaElement** - represents the editable area.
5. **RadDropDownListArrowButtonElement** - represents the arrow button that open the fonts pop up 


# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
            
