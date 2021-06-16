---
title: Adding a WinForms control to a Ribbon Bar
description: Adding a WinForms control to a Ribbon Bar. Check it now!
type: how-to
page_title: Adding a WinForms control to a Ribbon Bar
slug: adding-a-winforms-control-to-a-ribbon-bar
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2007|RadRibbonBar for WinForms|Iordan Pavlov|May 23, 2007|

 
**HOW-TO**   
Adding a WinForms control to a Ribbon Bar  
   
**SOLUTION**  
Any Windows Forms control can be added to a Ribbon Bar. That can be done easily by using **RadHostItem**.   
   
For example a Windows Forms DateTimePicker can be added to a Ribbon Bar with the following piece of code:   
    
````C#
DateTimePicker datePicker = new DateTimePicker();     
RadHostItem datePickerHost = new RadHostItem(datePicker);     
                 
this.RadRibbonBarGroup1.Items.Add(datePickerHost); 

````
````VB.NET
Dim datePicker As DateTimePicker = New DateTimePicker()
Dim datePickerHost As RadHostItem = New RadHostItem(datePicker)
Me.RadRibbonBarGroup1.Items.Add(datePickerHost)

````
  
Another example is adding a WinForms panel with radio buttons:  
    
````C#
RadioButton radioButton1 = new RadioButton();  
radioButton1.Text = "Option1";  
radioButton1.Location = new Point(5, 5);  
RadioButton radioButton2 = new RadioButton();  
radioButton2.Text = "Option2";  
radioButton2.Location = new Point(5, 25);  
 
Panel panel = new Panel();  
panel.Size = new Size(100, 60);  
panel.Controls.AddRange(new Control[] { radioButton1, radioButton2 });  
 
RadHostItem hostItem = new RadHostItem(panel);  
this.radRibbonBarGroup1.Items.Add(hostItem); 

````
````VB.NET
Dim radioButton1 As RadioButton = New RadioButton()
radioButton1.Text = "Option1"
radioButton1.Location = New Point(5, 5)
Dim radioButton2 As RadioButton = New RadioButton()
radioButton2.Text = "Option2"
radioButton2.Location = New Point(5, 25)

Dim panel As Panel = New Panel()
panel.Size = New Size(100, 60)
panel.Controls.AddRange(New Control() {radioButton1, radioButton2})

Dim hostItem As RadHostItem = New RadHostItem(panel)
Me.radRibbonBarGroup1.Items.Add(hostItem)

````
 
