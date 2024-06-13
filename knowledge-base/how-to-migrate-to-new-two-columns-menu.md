---
title: How to migrate to new two columns menu
description: How to migrate to new two columns menu. Check it now!
type: how-to
page_title: How to migrate to new two columns menu
slug: how-to-migrate-to-new-two-columns-menu
tags: menu
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2008|RadMenu and RadApplicationMenu for WinForms|Peter Petrov||

   
**HOW-TO**:  

Migrate a two columns RadMenu to the new ApplicationMenu (available from Q2 2008).  
   
**SOLUTION:**
Change the type menu type (issually Designer.cs or Designer.vb) **RadDropDownButtonElement** to **RadApplicationMenuButtonElement.**  

The items should be added not via **RadApplicationMenuDropDown.RightColumnItems**  
   
````C#
RadApplicationMenuDropDown dropDown = this.RadDropDownButtonElement1.DropDownMenu as  RadApplicationMenuDropDown; 
dropDown.RightColumnItems.AddRange(New Telerik.WinControls.RadItem() {this.RadMenuItem1, this.RadMenuItem2, this.RadMenuItem3});

````
````VB.NET
Dim dropDown As RadApplicationMenuDropDown = TryCast(Me.RadDropDownButtonElement1.DropDownMenu, RadApplicationMenuDropDown) 
dropDown.RightColumnItems.AddRange(New Telerik.WinControls.RadItem() {Me.RadMenuItem1, Me.RadMenuItem2, Me.RadMenuItem3}) 

````   
