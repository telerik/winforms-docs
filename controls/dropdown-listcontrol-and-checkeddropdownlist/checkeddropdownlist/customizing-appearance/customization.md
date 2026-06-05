---
title: Formatting Items
page_title: Formatting Items - RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customization
tags: customization
published: True
position: 2
previous_url: dropdown-and-listcontrol-checkeddropdownlist-customization
---

# Formatting Items
 
Formatting __RadCheckedDropDownList__ is easy and can be separated in two parts:
      

## Formatting the editable area

In order to customize the editable area, you must subscribe to the __TextBlockFormatting__ event and modify the properties of the __TokenizedTextBlockElement__:

#### Subscribe to TextBlockFormatting 

<snippet id='checkeddropdownlist-customization-textblockformattingsubscribe-cs' />
<snippet id='checkeddropdownlist-customization-textblockformattingsubscribe-vb' />




#### Modify properties 

<snippet id='checkeddropdownlist-customization-textblockformattinghandler-cs' />
<snippet id='checkeddropdownlist-customization-textblockformattinghandler-vb' />



>caption Figure 1: Customizing tokens

![WinForms RadCheckedDropDownList Customizing Tokens](images/dropdown-and-listcontrol-checkeddropdownlist-customization001.png)

## Formatting the drop down items

Customizing the drop down items is similar. Subscribe to the __VisualListItemFormatting__ event:

#### Subscribe to VisualListItemFormatting 

<snippet id='checkeddropdownlist-customization-visuallistitemformattingsubscribe-cs' />
<snippet id='checkeddropdownlist-customization-visuallistitemformattingsubscribe-vb' />




#### Modify properties 

<snippet id='checkeddropdownlist-customization-visuallistitemformattinghandler-cs' />
<snippet id='checkeddropdownlist-customization-visuallistitemformattinghandler-vb' />



>caption Figure 2: Customizing dropdown items

![WinForms RadCheckedDropDownList Customizing Dropdown Items](images/dropdown-and-listcontrol-checkeddropdownlist-customization002.png)
