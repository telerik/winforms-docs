---
title: Eliminate the Last Item's stretching in DataLayout
description: This article shows how to handle the last item's vertical stretching in the WinForms DataLayout.
type: how-to
page_title: How to eliminate the Last Item's stretching in DataLayout.
slug: stretched-last-item-in-datalayout
position: 0
tags: datalayout, last, vertical, stretch, space
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.2.606|RadDataLayout for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

The last field's control in RadDataLayout is always generated with too much space compared to the gap between the other generated controls. The **IsMarried** field is stretched vertically and occupies the available space for RadDataLayout:

![stretched-last-item-in-datalayout001](images/stretched-last-item-in-datalayout001.png)

This article demonstrates how to deal with this space and make the editor control similar in height like the rest of the editors.

## Solution 

You can calculate the potential height considering the number of generated controls after setting the **DataSource** property. A possible solution for managing the RadDataLayout.LayoutControl.MaximumSize allows you to achieve the desired goal and move the last item up to the previous one. It is just necessary to assign an appropriate height and eliminate the scroll-bar: 

````C#
        public RadForm1()
        {
            InitializeComponent();
            this.radDataLayout1.DataSource = new Employee()
            {
                FirstName = "Sarah",
                LastName = "Blake",
                Occupation = "Supplied Manager",
                StartingDate = new DateTime(2005, 04, 12),
                IsMarried = true
            };
            int height = this.radDataLayout1.LayoutControl.Controls.Count * 20;
            this.radDataLayout1.LayoutControl.MaximumSize = new Size(0, height);
        }

        public class Employee
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Occupation { get; set; }
            public DateTime StartingDate { get; set; }
            public bool IsMarried { get; set; }
        }      

````
````VB.NET



    
````

The achieved result is illustrated below:

![stretched-last-item-in-datalayout002](images/stretched-last-item-in-datalayout002.png)






    
   
  
    
 
