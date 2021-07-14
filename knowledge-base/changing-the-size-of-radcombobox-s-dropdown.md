---
title: Changing the size of RadComboBox's dropdown
description: Changing the size of RadComboBox's dropdown. Check it now!
type: how-to
page_title: Changing the size of RadComboBox's dropdown
slug: changing-the-size-of-radcombobox-s-dropdown
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2009|RadComboBox for WinForms|Nikolay Diyanov|Feb 17, 2009|
  
   
**HOW-TO**
Change the size of RadComboBox's dropdown  
   
**SOLUTION**
By default, the size of the dropdown of RadComboBox is calculated as follows:   
 
- the width is equal to the width of the combobox itself
- the height is 106 pixels


This size can be changed by using **DropDownWidth** and **DropDownHeight** properties and setting their values in pixels. By default, the value of **DropDownWidth** is **-1** which means that the drop-down windows will take the width of the combobox every time it pops up. Refer to the following code snippet:  
 
````C#
this.radComboBox1.ComboBoxElement.DropDownWidth = 150;    
this.radComboBox1.ComboBoxElement.DropDownHeight = 400; 

````
````VB.NET
Me.RadComboBox1.ComboBoxElement.DropDownWidth = 150   
Me.RadComboBox1.ComboBoxElement.DropDownHeight = 400

````   
  

Additionally, the behavior of the drop-down windows's height could be switched to be exactly the same as the height of a specified number of combobox items (they would be all with equal height. This could be done by setting **IntegralHeight** property to **true** and setting the **MaxDropDownItems** property with the desired number.   
   

Note that when **Virtualized** is set to **true** the **IntegralHeight** is ignored and only **MaxDropDownItems** determines the height of the drop-down.


