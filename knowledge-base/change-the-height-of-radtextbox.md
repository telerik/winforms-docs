---
title: Change the height of RadTextBox
description: Change the height of RadTextBox. Check it now!
type: how-to
page_title: Change the height of RadTextBox
slug: change-the-height-of-radtextbox
tags: textbox
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q3 2007|RadTextBox for WinForms|Angel Kanchev|Nov 28, 2007|

   
**HOW-TO**
Change the height of **RadTextBox**.  
   
**DESCRIPTION**  
As a rule, textboxes can always be stretched horizontally. However, vertical stretching is not always possible. This article shows how to adjust the height of **RadTextBox**.  
   
**SOLUTION**  
The height is affected by the **Multiline** property:  
   
 
1. When **Multiline** is set to **true**, the height of **RadTextBox** can be freely changed (both in design-time or by setting the **Size** property)
2. When **Multiline** is set to **false,** the height of **RadTextBox** is determined by the **Font** property and the vertical aspect of the **Padding** property (**Top** and **Bottom**).

 
There is one additional option to adjust the height of a non-multiline **RadTextBox**. If you do not need the automatic height calculation based on the **Font,** there is a vertical stretching that you can allow. You can only do this programmatically - add the following code block after the call to **InitializeComponent()** in the Form constructor or in **FormLoad**: 

````C#
this.radTextBox1.RootElement.StretchVertically = true;
this.radTextBox1.TextBoxElement.StretchVertically = true;
this.radTextBox1.TextBoxElement.TextBoxItem.Alignment = ContentAlignment.MiddleLeft;

````
````VB.NET
Me.RadTextBox1.RootElement.StretchVertically = True
Me.RadTextBox1.TextBoxElement.StretchVertically = True
Me.RadTextBox1.TextBoxElement.TextBoxItem.Alignment = ContentAlignment.MiddleLeft

```` 


This will cause the non-stretchable in the vertical direction **TextBoxItem** to be vertically centered in the vertically stretchable **RadTextBox**.


