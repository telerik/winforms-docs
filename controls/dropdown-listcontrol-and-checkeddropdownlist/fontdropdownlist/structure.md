---
title: Structure
page_title: Structure - WinForms FontDropDownList Control
description: Get familiar with the inner structure and organization of the elements which build the WinForms FontDropDownList control. 
slug: winforms/editors/fontdropdownlist/structure
tags: font, dropdown, structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadFontDropDownList** control. 

**RadFontDropDownList** is a derivative of [RadPopupEditor]({%slug winforms/editors/popupeditor%}) and it internally uses a grouped **RadListView** with default **ViewType** set to *DetailsView*. Two columns are displayed in the pop up list - while the first column stores the font name, the second column shows a preview of the respective font.
        
>caption Figure 1: RadFontDropDownList's elements hierarchy

![WinForms RadFontDropDownList RadFontDropDownList's Elements Hierarchy](images/editors-fontdropdownlist-structure001.png)![WinForms RadFontDropDownList RadFontDropDownList's elements hierarchy](images/editors-fontdropdownlist-structure003.png)

>caption Figure 2: RadFontDropDownList's structure

![WinForms RadFontDropDownList RadFontDropDownList's Structure](images/editors-fontdropdownlist-structure002.png)

1. **RadPopupContainerForm** - represents the pop up container that hosts the **RadListViewElement**.
2. **DetailListViewGroupVisualItem** - represents a visual element for the group item (e.g. *Recently Used Fonts* and *All Fonts* items).  
3. **DetailListViewVisualItem** - represents a visual item illustrating a font option in the pop up.
4. **RadDropDownListEditableAreaElement** - represents the editable area.
5. **RadDropDownListArrowButtonElement** - represents the arrow button that open the fonts pop up 


# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
            
