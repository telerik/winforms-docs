---
title: DropDownStyle
page_title: DropDownStyle
description: DropDownStyle
slug: dropdown-and-listcontrol-dropdownlist-dropdownstyle
tags: dropdownstyle
published: True
position: 2
---

# DropDownStyle



## 

The RadDropDownList __DropDownStyle__ property determines if the text area at the top of the control can be edited. A setting of *DropDown* (the default) allows editing and the *DropDownList* setting shows the text area as read-only.

![dropdown-and-listcontrol-dropdownlist-dropdownstyle 001](images/dropdown-and-listcontrol-dropdownlist-dropdownstyle001.png)

#### __[C#] Setting DropDownStyle__

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownList1.cs region=dropDownStyle}}
	            this.radDropDownList1.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown;
	            this.radDropDownList1.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDownList;
	{{endregion}}



#### __[VB.NET] Setting DropDownStyle__

{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownList1.vb region=dropDownStyle}}
	        Me.radDropDownList1.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown
	        Me.radDropDownList1.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDownList
	{{endregion}}




